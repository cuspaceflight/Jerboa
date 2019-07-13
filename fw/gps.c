#include "ch.h"
#include "hal.h"

#include <string.h>
#include "gps.h"
#include "ubx.h"

MUTEX_DECL(global_pvt_pkt_mutex);

/* Serial Setup */
static SerialDriver* gps_seriald;
static SerialConfig serial_cfg = {
    .speed = 9600,
    .cr1 = 0,
    .cr2 = 0,
    .cr3 = 0,
};

/* Config Flag */
static bool gps_configured = false;

/* Function Prototypes */
static uint16_t gps_fletcher_8(uint16_t chk, uint8_t *buf, uint8_t n);
static void gps_checksum(uint8_t *buf);
static bool gps_transmit(uint8_t *buf);
static enum ublox_result ublox_state_machine(uint8_t b);
static bool gps_configure(bool nav_pvt, bool nav_posecef);
static bool gps_tx_ack(uint8_t *buf);

/* Global Position Packet */
ublox_pvt_t global_pvt_pkt;

/* Position Packet Mutex */
mutex_t global_pvt_pkt_mutex;

/* UBX Decoding State Machine States */
typedef enum {
    STATE_IDLE = 0, STATE_SYNC1, STATE_SYNC2,
    STATE_CLASS, STATE_ID, STATE_L1, STATE_L2,
    STATE_PAYLOAD, STATE_CK_A, NUM_STATES
} ubx_state;


/* Run the Fletcher-8 checksum, initialised to chk, over n bytes of buf */
static uint16_t gps_fletcher_8(uint16_t chk, uint8_t *buf, uint8_t n)
{
    int i;
    uint8_t ck_a = chk & 0xff, ck_b = chk>>8;

    /* Run Fletcher-8 algorithm */
    for(i=0; i<n; i++) {
        ck_a += buf[i];
        ck_b += ck_a;
    }

    return (ck_b<<8) | (ck_a);
}


/* Computes the Fletcher-8 checksum over buf, using its length fields
 * to determine how much to read, returning the new checksum.
 */
static void gps_checksum(uint8_t *buf)
{
    uint16_t plen;

    /* Check SYNC bytes are correct */
    if(buf[0] != UBX_SYNC1 && buf[1] != UBX_SYNC2)
        return;

    /* Extract payload length */
    plen = ((uint16_t*)buf)[2];

    uint16_t ck = gps_fletcher_8(0, &buf[2], plen+4);

    /* Write new checksum to the buffer */
    buf[plen+6] = ck;
    buf[plen+7] = ck >> 8;
}


/* Transmit a UBX message over the Serial.
 * Message length is determined from the UBX length field.
 * Checksum is added automatically.
 */
static bool gps_transmit(uint8_t *buf)
{
    size_t n, nwritten;
    systime_t timeout;

    /* Add checksum to outgoing message */
    gps_checksum(buf);

    /* Determine length and thus suitable timeout in systicks (ms) */
    n = 8 + ((uint16_t*)buf)[2];
    timeout = n*2*CH_CFG_ST_FREQUENCY/1000;

    /* Transmit message */
    nwritten = sdWriteTimeout(gps_seriald, buf, n, timeout);
    return nwritten == n;
}


/* Transmits a UBX message and blocks 
 * until a ACK/NAK is recieved in response
 */
static bool gps_tx_ack(uint8_t *buf)
{
    if(!gps_transmit(buf)) {
        return false;
    }

    enum ublox_result r;
    do {
        r = ublox_state_machine(sdGet(gps_seriald));
    } while( (r != UBLOX_ACK) && (r != UBLOX_NAK) );

    if(r == UBLOX_NAK){
        return false;
    }
    return true;
}


/* Run new byte b through the UBX decoding state machine. Note that this
 * function preserves static state and processes new messages as appropriate
 * once received.
 */
static enum ublox_result ublox_state_machine(uint8_t b)
{
    static ubx_state state = STATE_IDLE;

    static uint8_t class, id;
    static uint16_t length;
    static uint16_t length_remaining;
    static uint8_t payload[128];
    static uint8_t ck_a, ck_b;
    static uint16_t ck;

    ubx_cfg_nav5_t cfg_nav5;
    ublox_posecef_t posecef;
    

    switch(state) {
        case STATE_IDLE:
            if(b == UBX_SYNC1)
                state = STATE_SYNC1;
            break;

        case STATE_SYNC1:
            if(b == UBX_SYNC2)
                state = STATE_SYNC2;
            else
                state = STATE_IDLE;
            break;

        case STATE_SYNC2:
            class = b;
            state = STATE_CLASS;
            break;

        case STATE_CLASS:
            id = b;
            state = STATE_ID;
            break;

        case STATE_ID:
            length = (uint16_t)b;
            state = STATE_L1;
            break;

        case STATE_L1:
            length |= (uint16_t)b << 8;
            if(length >= 128) {
                state = STATE_IDLE;
                return UBLOX_RXLEN_TOO_LONG;
            }
            length_remaining = length;
            state = STATE_PAYLOAD;
            break;

        case STATE_PAYLOAD:
            if(length_remaining) {
                payload[length - length_remaining--] = b;
            } else {
                ck_a = b;
                state = STATE_CK_A;
            }
            break;

        case STATE_CK_A:
            ck_b = b;
            state = STATE_IDLE;

            /* Verify checksum */
            ck = gps_fletcher_8(0, &class, 1);
            ck = gps_fletcher_8(ck, &id, 1);
            ck = gps_fletcher_8(ck, (uint8_t*)&length, 2);
            ck = gps_fletcher_8(ck, payload, length);
            if(ck_a != (ck&0xFF) || ck_b != (ck>>8)) {
                state=STATE_IDLE;
                return UBLOX_BAD_CHECKSUM;
            }

            /* Handle Payload */
            switch(class) {

                /* Acknowledge */
                case UBX_ACK:
                    if(id == UBX_ACK_NAK) {
                        /* NAK */
                        return UBLOX_NAK;
                    } else if(id == UBX_ACK_ACK) {
                        /* ACK - Do Nothing */
                        return UBLOX_ACK;
                    } else {
                        return UBLOX_UNHANDLED;
                    }
                    break;

                /* Nav Payload */
                case UBX_NAV:
                    if(id == UBX_NAV_PVT) {

                        /* Extract NAV-PVT Payload */
                        chMtxLock(&global_pvt_pkt_mutex);
                        memcpy(&global_pvt_pkt, payload, length);
                        chMtxUnlock(&global_pvt_pkt_mutex);
	                    
                        return UBLOX_NAV_PVT;

                    } else if(id == UBX_NAV_POSECEF){

                        /* Extract NAV-POSECEF Payload */
                        memcpy(&posecef, payload, length);
                        // TODO: do something with this
                        return UBLOX_NAV_POSECEF;

                    } else {
                        return UBLOX_UNHANDLED;
                    }
                    break;

                /* Config Payload */
                case UBX_CFG:
                    if(id == UBX_CFG_NAV5) {

                        /* NAV5 */
                        memcpy(cfg_nav5.payload, payload, length);
                        if(cfg_nav5.dyn_model != 2) {
                        }
                        return UBLOX_CFG_NAV5;
                    } else {
                        return UBLOX_UNHANDLED;
                    }
                    break;

                /* Unhandled */
                default:
                    return UBLOX_UNHANDLED;
            }
            break;

        default:
            state = STATE_IDLE;
            return UBLOX_ERROR;
    }
    return UBLOX_WAIT;
}


/* Configure uBlox GPS */
static bool gps_configure(bool nav_pvt, bool nav_posecef) {

    gps_configured = true;

    ubx_cfg_prt_t prt = {0};
    ubx_cfg_nav5_t nav5 = {0};
    ubx_cfg_msg_t msg = {0};
    ubx_cfg_msg_t msg2 = {0};
    ubx_cfg_rate_t rate = {0};
    ubx_cfg_pm2_t pm2 = {0};

    /* Disable NMEA on UART */
    prt.sync1 = UBX_SYNC1;
    prt.sync2 = UBX_SYNC2;
    prt.class = UBX_CFG;
    prt.id = UBX_CFG_PRT;
    prt.length = sizeof(prt.payload);
    /* Program UART1 */
    prt.port_id = 1;
    /* Don't use TXReady GPIO */
    prt.tx_ready = 0;
    /* 8 bits, no polarity, 1 stop bit */
    prt.mode = (1<<4) | (3<<6) | (4<<9);
    /* 9600 baud */
    prt.baud_rate = 9600;
    /* only receive UBX protocol */
    prt.in_proto_mask = (1<<0);
    /* only send UBX protocol */
    prt.out_proto_mask = (1<<0);
    /* no weird timeout */
    prt.flags = 0;
    /* must be 0 */
    prt.reserved5 = 0;
    gps_configured &= gps_transmit((uint8_t*)&prt);
    if(!gps_configured) return false;

    /* Wait for it to stop barfing NMEA */
    chThdSleepMilliseconds(300);

    /* Clear the read buffer */
    while(sdGetTimeout(gps_seriald, TIME_IMMEDIATE) != Q_TIMEOUT);
    
    /* Set to Airborne <2g mode */
    nav5.sync1 = UBX_SYNC1;
    nav5.sync2 = UBX_SYNC2;
    nav5.class = UBX_CFG;
    nav5.id = UBX_CFG_NAV5;
    nav5.length = sizeof(nav5.payload);

    nav5.mask = 1 | (1<<10);
    nav5.dyn_model = 7;
    nav5.utc_standard = 3;  // USNO

    gps_configured &= gps_tx_ack((uint8_t*)&nav5);
    if(!gps_configured) return false;

    /* Set solution rate to 1Hz */
    rate.sync1 = UBX_SYNC1;
    rate.sync2 = UBX_SYNC2;
    rate.class = UBX_CFG;
    rate.id = UBX_CFG_RATE;
    rate.length = sizeof(rate.payload);

    rate.meas_rate = 1000;
    rate.nav_rate = 1;
    rate.time_ref = 0;  // UTC
    
    gps_configured &= gps_tx_ack((uint8_t*)&rate);
    if(!gps_configured) return false;

    
    /* Enable NAV PVT messages */
    if(nav_pvt){
        msg.sync1 = UBX_SYNC1;
        msg.sync2 = UBX_SYNC2;
        msg.class = UBX_CFG;
        msg.id = UBX_CFG_MSG;
        msg.length = sizeof(msg.payload);

        msg.msg_class = UBX_NAV;
        msg.msg_id    = UBX_NAV_PVT;
        msg.rate      = 1;
        
        gps_configured &= gps_tx_ack((uint8_t*)&msg);
        if(!gps_configured) return false;
    }

    
    /* Enable NAV POSECEF messages */
    if (nav_posecef){
        msg2.sync1 = UBX_SYNC1;
        msg2.sync2 = UBX_SYNC2;
        msg2.class = UBX_CFG;
        msg2.id = UBX_CFG_MSG;
        msg2.length = sizeof(msg2.payload);

        msg2.msg_class = UBX_NAV;
        msg2.msg_id    = UBX_NAV_POSECEF;
        msg2.rate      = 1;
        
        gps_configured &= gps_tx_ack((uint8_t*)&msg2);
        if(!gps_configured) return false;
    }

    /* Power on/off controlled by extint pin */
    pm2.sync1 = UBX_SYNC1;
    pm2.sync2 = UBX_SYNC2;
    pm2.class = UBX_CFG;
    pm2.id = UBX_CFG_PM2;
    pm2.length = sizeof(pm2.payload);

    pm2.version = 0x01;
    pm2.maxStartupStateDur = 0;

    pm2.flags =
        // Select EXTINT0
        (1 << 5) &   // Enable extintWake
        (1 << 6) &   // Enable extintBackup
        // Disable limitPeakCurrent
        (1 << 10) &  // Wait for time fix OK before starting on time
        (1 << 11) &  // Enable updateRTC
        (1 << 12) &  // Enable updateEPH
        (1 << 16);   // Enable doNotEnterOff
        // ON/OFF mode

    pm2.updatePeriod = 1000;
    pm2.searchPeriod = 10000;

    gps_configured &= gps_tx_ack((uint8_t*)&pm2);
    if(!gps_configured) return false;

    return gps_configured;
}

/* Configure uBlox GPS */
void gps_init(SerialDriver* seriald, bool nav_pvt, bool nav_posecef){
    /* Initialise mutex */
    chMtxObjectInit(&global_pvt_pkt_mutex);

    /* Set global serial driver */
    gps_seriald = seriald;

    /* Reset uBlox */
    palClearLine(LINE_GPS_NRST);
    chThdSleepMilliseconds(300);
    palSetLine(LINE_GPS_NRST);

    /* Wait for GPS to restart */
    chThdSleepMilliseconds(500);

    /* Start Serial Driver */
    sdStart(gps_seriald, &serial_cfg);

    while(!gps_configure(nav_pvt, nav_posecef)){
        
        chThdSleepMilliseconds(1000);
    }
    
    return;
}

bool gps_poll_pvt(ublox_pvt_t* pvt_pckt)
{
  const uint8_t request[] = {UBX_SYNC1, UBX_SYNC2,
                           UBX_NAV, UBX_NAV_PVT,
                           0x00, 0x00,
                           0x08, 0x19};
  if(!gps_transmit((uint8_t*)request)) {
    return false;
  }

  enum ublox_result r = UBLOX_WAIT;
  do {
    r = ublox_state_machine(sdGet(gps_seriald));
  } while(r == UBLOX_WAIT);

  if(r != UBLOX_NAV_PVT)
    return false;
  else
  {
    gps_get_pvt(pvt_pckt);
    return true;
  }
}

void gps_get_pvt(ublox_pvt_t* pvt_pckt)
{
  if(pvt_pckt)
  {
    chMtxLock(&global_pvt_pkt_mutex);
    memcpy(pvt_pckt, &global_pvt_pkt, sizeof(ublox_pvt_t));
    chMtxUnlock(&global_pvt_pkt_mutex);
  }
}


/* Thread to Run State Machine */
static THD_WORKING_AREA(gps_thd_wa, 2048);
static THD_FUNCTION(gps_thd, arg) {

    (void)arg;
    chRegSetThreadName("GPS");
    
    /* Clear Buffer */
    while(sdGetTimeout(gps_seriald, TIME_IMMEDIATE) != Q_TIMEOUT);

    /* Run State Machine */
    while(true){    
        if(gps_configured){            
            ublox_state_machine(sdGet(gps_seriald));
        }
    }
}


/* Init GPS Thread */
void gps_thd_init(void) {

    chThdCreateStatic(gps_thd_wa, sizeof(gps_thd_wa), NORMALPRIO, gps_thd, NULL);
}
