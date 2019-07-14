/* Si446x Radio Driver
 * Copyright 2016 Adam Greig
 */
 
 #include "si446x.h"

#include <math.h>
#include "hal.h"
#include "ezradiopro.h"

/* Store the configuration structs globally. Saves a bunch of passing around
 * the same thing, and we almost surely won't need to configure two radios
 * on the same board, right?
 */
static const struct si446x_board_config* brdcfg;

/* Store the scale factor that maps Hz to PLL counts.
 * This is equal to (N_presc * F_xo) / outdiv.
 */
static uint32_t pll_scalefactor;

/* Size of on-chip TX and RX FIFO. This won't change unless we swap to the
 * merged FIFO, which makes a lot of other things gross.
 * Nice to have as constants, anyway.
 */
#define RX_FIFO_LEN (64)
#define TX_FIFO_LEN (64)

/* The threshold at which point we'll get an interrupt from the chip that it's
 * either about to overflow/underflow. We then transfer this amount of data
 * off the chip's FIFO. Make these smaller if you find you're hitting
 * underflows or overflows. They don't need to be the same.
 */
#define RX_FIFO_THRESHOLD (48)
#define TX_FIFO_THRESHOLD (48)

/******************************************************************************
 * Structs to store result of some commands, laid out in-memory to match the
 * command return format.
 */
struct si446x_part_info {
    uint8_t chiprev;
    uint16_t part;
    uint8_t pbuild;
    uint16_t id;
    uint8_t customer;
    uint8_t romid;
} __attribute__((packed));

struct si446x_func_info {
    uint8_t revext, revbranch, revint;
    uint16_t patch;
    uint8_t func;
} __attribute__((packed));

struct si446x_gpio_pin_cfg {
    uint8_t gpio0, gpio1, gpio2, gpio3, nirq, sdo, gen_config;
} __attribute__((packed));

struct si446x_int_status {
    uint8_t int_pend, int_status, ph_pend, ph_status, modem_pend, modem_status;
    uint8_t chip_pend, chip_status;
} __attribute__((packed));

struct si446x_modem_status {
    uint8_t modem_pend, modem_status, curr_rssi, latch_rssi;
    uint8_t ant1_rssi, ant2_rssi;
    uint16_t afc_freq_offset;
} __attribute__((packed));

struct si446x_chip_status {
    uint8_t chip_pend, chip_status, cmd_err_status, cmd_err_cmd_id;
} __attribute__((packed));

struct si446x_ph_status  {
    uint8_t ph_pend, ph_status;
} __attribute__((packed));
/*****************************************************************************/

/******************************************************************************
 * Config for more sophisticated parameter-setting commands
 */
struct si446x_dec_cfg {
    uint8_t ndec0, ndec1, ndec2, ndec3;
    uint8_t ndec2gain;
    bool ndec2agc, chflt_lopw, droopflt, dwn2, dwn3, rxgainx2;
};

/*****************************************************************************/

/*****************************************************************************
 * Si446x BOOT COMMANDS
 */
static void si446x_power_up(bool tcxo, uint32_t xo_freq);
/*****************************************************************************/

/*****************************************************************************
 * Si446x COMMON COMMANDS
 */
static struct si446x_part_info si446x_part_info(void);
static struct si446x_func_info si446x_func_info(void)
    __attribute__((used));
static void si446x_set_property(
    uint8_t group, uint8_t number, uint8_t value);
static uint8_t si446x_get_property(
    uint8_t group, uint8_t number);
static struct si446x_gpio_pin_cfg si446x_gpio_pin_cfg(
    struct si446x_gpio_pin_cfg gpio_pin_cfg);
static struct si446x_int_status si446x_get_int_status(
    uint8_t ch_clr_pend, uint8_t modem_clr_pend, uint8_t chip_clr_pend)
    __attribute__((used));
static void si446x_request_device_state(
    uint8_t* curr_state, uint8_t* current_channel)
    __attribute__((used));
static void si446x_change_state(uint8_t next_state1)
    __attribute__((used));
static void si446x_read_cmd_buf(uint8_t* buf, size_t n);
static uint8_t si446x_frr_a_read(void);
static uint8_t si446x_frr_b_read(void);
static uint8_t si446x_frr_c_read(void);
static uint8_t si446x_frr_d_read(void);
static uint8_t si446x_frr_read(uint8_t cmd);
/*****************************************************************************/

/*****************************************************************************
 * Si446x RX COMMANDS
 */
static uint16_t si446x_packet_info(uint8_t field_number,
                                   uint16_t len, uint16_t len_diff)
    __attribute__((used));
static struct si446x_modem_status si446x_get_modem_status(
    uint8_t modem_clr_pend);
/*****************************************************************************/


/*****************************************************************************
 * Si446x ADVANCED COMMANDS
 */
static struct si446x_chip_status si446x_get_chip_status(uint8_t chip_clr_pend);
static struct si446x_ph_status si446x_get_ph_status(uint8_t ph_clr_pend)
    __attribute__((used));
/*****************************************************************************/


/******************************************************************************
 * Our higher-level commands
 */
static bool si446x_configure(void);
static void si446x_set_frr(uint8_t a, uint8_t b, uint8_t c, uint8_t d);
static bool si446x_set_freq(uint32_t freq, uint32_t xo);
static void si446x_send_command(uint8_t* txbuf, size_t txn,
                                uint8_t* rxbuf, size_t rxn);
static uint8_t si446x_read_frr_state(void);
static uint8_t si446x_read_frr_modem(void);
static uint8_t si446x_read_frr_ph(void);
static uint8_t si446x_read_frr_chip(void);
/*****************************************************************************/


static void si446x_power_up(bool tcxo, uint32_t xo_freq)
{
    uint8_t buf[7] = {EZRP_POWER_UP, 1, tcxo,
                      xo_freq>>24, xo_freq>>16, xo_freq>>8, xo_freq};
    si446x_read_cmd_buf(NULL, 0);
    si446x_send_command(buf, sizeof(buf), NULL, 0);
    si446x_read_cmd_buf(NULL, 0);
}

static struct si446x_part_info si446x_part_info()
{
    uint8_t cmd = EZRP_PART_INFO;
    struct si446x_part_info part_info;
    si446x_send_command(&cmd, 1, (uint8_t*)&part_info, sizeof(part_info));
    part_info.part = (part_info.part >> 8) | (part_info.part << 8);
    part_info.id = (part_info.id >> 8) | (part_info.id << 8);
    return part_info;
}

static struct si446x_func_info si446x_func_info()
{
    uint8_t cmd = EZRP_FUNC_INFO;
    struct si446x_func_info func_info;
    si446x_send_command(&cmd, 1, (uint8_t*)&func_info, sizeof(func_info));
    func_info.patch = (func_info.patch >> 8) | (func_info.patch << 8);
    return func_info;
}

static void si446x_set_property(uint8_t group, uint8_t number, uint8_t value)
{
    uint8_t buf[5] = {EZRP_SET_PROPERTY, group, 1, number, value};
    si446x_send_command(buf, sizeof(buf), NULL, 0);
}

static uint8_t si446x_get_property(uint8_t group, uint8_t number)
{
    uint8_t buf[4] = {EZRP_GET_PROPERTY, group, 1, number};
    uint8_t rx;
    si446x_send_command(buf, sizeof(buf), &rx, 1);
    return rx;
}

static struct si446x_gpio_pin_cfg si446x_gpio_pin_cfg(
    struct si446x_gpio_pin_cfg gpio_pin_cfg)
{
    uint8_t buf[8] = {
        EZRP_GPIO_PIN_CFG,
        gpio_pin_cfg.gpio0, gpio_pin_cfg.gpio1,
        gpio_pin_cfg.gpio2, gpio_pin_cfg.gpio3,
        gpio_pin_cfg.nirq,  gpio_pin_cfg.sdo,
        gpio_pin_cfg.gen_config};
    struct si446x_gpio_pin_cfg pin_cfg;
    si446x_send_command(buf, sizeof(buf), (uint8_t*)&pin_cfg, sizeof(pin_cfg));
    return pin_cfg;
}

static struct si446x_int_status si446x_get_int_status(
    uint8_t ch_clr_pend, uint8_t modem_clr_pend, uint8_t chip_clr_pend)
{
    uint8_t buf[4] = {EZRP_GET_INT_STATUS, ch_clr_pend,
                      modem_clr_pend, chip_clr_pend};
    struct si446x_int_status int_status;
    si446x_send_command(buf, sizeof(buf),
                        (uint8_t*)&int_status, sizeof(int_status));
    return int_status;
}

static void si446x_request_device_state(
    uint8_t* curr_state, uint8_t* current_channel)
{
    uint8_t cmd = EZRP_REQUEST_DEVICE_STATE;
    uint8_t rxbuf[2];
    si446x_send_command(&cmd, 1, rxbuf, 2);
    if(curr_state != NULL) *curr_state = rxbuf[0];
    if(current_channel != NULL) *current_channel = rxbuf[1];
}

static void si446x_change_state(uint8_t next_state1)
{
    uint8_t buf[2] = {EZRP_CHANGE_STATE, next_state1};
    si446x_send_command(buf, sizeof(buf), NULL, 0);
}

static void si446x_read_cmd_buf(uint8_t* buf, size_t n)
{
    uint8_t cmd = EZRP_READ_CMD_BUFF;
    uint8_t cts = 0x00;

    /* Wait for CTS to be 0xFF */
    while(cts != 0xFF) {
        spiSelect(brdcfg->spid);
        spiSend(brdcfg->spid, 1, &cmd);
        spiReceive(brdcfg->spid, 1, &cts);
        if(cts == 0xFF) {
            break;
        }
        spiUnselect(brdcfg->spid);
    }

    /* Read actual command response if applicable */
    if(n > 0) {
        spiReceive(brdcfg->spid, n, buf);
    }

    spiUnselect(brdcfg->spid);
}

static uint8_t si446x_frr_a_read() {
    return si446x_frr_read(EZRP_FRR_A_READ);
}

static uint8_t si446x_frr_b_read() {
    return si446x_frr_read(EZRP_FRR_B_READ);
}

static uint8_t si446x_frr_c_read() {
    return si446x_frr_read(EZRP_FRR_C_READ);
}

static uint8_t si446x_frr_d_read() {
    return si446x_frr_read(EZRP_FRR_D_READ);
}

static uint8_t si446x_frr_read(uint8_t cmd)
{
    uint8_t buf;

    spiSelect(brdcfg->spid);
    spiSend(brdcfg->spid, 1, &cmd);
    spiReceive(brdcfg->spid, 1, &buf);
    spiUnselect(brdcfg->spid);

    return buf;
}

static uint16_t si446x_packet_info(uint8_t field_number, uint16_t len,
                                   uint16_t len_diff)
{
    uint8_t buf[5] = {EZRP_PACKET_INFO, field_number, len>>8, len, len_diff};
    uint8_t rx[2];
    si446x_send_command(buf, sizeof(buf), rx, sizeof(rx));
    return (rx[0] << 8) | rx[1];
}

static struct si446x_modem_status si446x_get_modem_status(
    uint8_t modem_clr_pend)
{
    uint8_t buf[2] = {EZRP_GET_MODEM_STATUS, modem_clr_pend};
    struct si446x_modem_status modem_status;
    si446x_send_command(buf, sizeof(buf), (uint8_t*)&modem_status,
                        sizeof(modem_status));
    modem_status.afc_freq_offset = (modem_status.afc_freq_offset >> 8) |
                                   (modem_status.afc_freq_offset << 8);
    return modem_status;
}

static struct si446x_chip_status si446x_get_chip_status(uint8_t chip_clr_pend)
{
    uint8_t buf[2] = {EZRP_GET_CHIP_STATUS, chip_clr_pend};
    struct si446x_chip_status chip_status;
    si446x_send_command(buf, sizeof(buf),
                        (uint8_t*)&chip_status, sizeof(chip_status));
    return chip_status;
}

static struct si446x_ph_status si446x_get_ph_status(uint8_t ph_clr_pend)
{
    uint8_t buf[2] = {EZRP_GET_PH_STATUS, ph_clr_pend};
    struct si446x_ph_status ph_status;
    si446x_send_command(buf, sizeof(buf),
                        (uint8_t*)&ph_status, sizeof(ph_status));
    return ph_status;
}

/* Send the txbuf to the SI446x, wait for CTS, read the specified length of
 * response.
 */
static void si446x_send_command(uint8_t* txbuf, size_t txn,
                                uint8_t* rxbuf, size_t rxn) {
    spiSelect(brdcfg->spid);
    spiSend(brdcfg->spid, txn, txbuf);
    spiUnselect(brdcfg->spid);
    si446x_read_cmd_buf(rxbuf, rxn);
}

/* Configure all four fast-response-registers.
 */
static void si446x_set_frr(uint8_t a, uint8_t b, uint8_t c, uint8_t d)
{
    si446x_set_property(EZRP_PROP_FRR_CTL, EZRP_PROP_FRR_CTL_A_MODE, a);
    si446x_set_property(EZRP_PROP_FRR_CTL, EZRP_PROP_FRR_CTL_B_MODE, b);
    si446x_set_property(EZRP_PROP_FRR_CTL, EZRP_PROP_FRR_CTL_C_MODE, c);
    si446x_set_property(EZRP_PROP_FRR_CTL, EZRP_PROP_FRR_CTL_D_MODE, d);
}

/* Read the current state from FRR A */
static uint8_t si446x_read_frr_state()
{
    return si446x_frr_a_read();
}

/* Read the modem status from FRR B */
static uint8_t si446x_read_frr_modem()
{
    return si446x_frr_b_read();
}

/* Read the packet handler status from FRR C */
static uint8_t si446x_read_frr_ph()
{
    return si446x_frr_c_read();
}

/* Read the chip status from FRR D */
static uint8_t si446x_read_frr_chip()
{
    return si446x_frr_d_read();
}

/* Compute and set the required PLL configuration for the desired centre
 * frequency. Also sets the related VCOCNT_RX_ADJ property.
 * Returns false if the frequency is out of band.
 * The set frequency is F = (1 + INTE + FRAC/2^19)*(XO_FREQ/2)
 */
static bool si446x_set_freq(uint32_t freq, uint32_t xo) {

    uint32_t inte, frac, if_freq;
    uint8_t outdiv, band;
    int8_t vcocnt;

    if(freq < 1050000000 && freq > 850000000) {
        outdiv = 4;
    } else if(freq < 525000000 && freq > 420000000) {
        outdiv = 8;
    } else if(freq < 350000000 && freq > 284000000) {
        outdiv = 12;
    } else if(freq < 175000000 && freq > 142000000) {
        outdiv = 24;
    } else {
        return false;
    }

    pll_scalefactor = (2 * xo) / outdiv;

    inte = (freq / pll_scalefactor) - 1;
    frac = (((uint64_t)freq << 19) / pll_scalefactor) - ((inte + 1) << 19);

    si446x_set_property(EZRP_PROP_FREQ_CONTROL, EZRP_PROP_FREQ_CONTROL_INTE,
        inte);
    si446x_set_property(EZRP_PROP_FREQ_CONTROL, EZRP_PROP_FREQ_CONTROL_FRAC0,
        (uint8_t)(frac>>16));
    si446x_set_property(EZRP_PROP_FREQ_CONTROL, EZRP_PROP_FREQ_CONTROL_FRAC1,
        (uint8_t)(frac>>8));
    si446x_set_property(EZRP_PROP_FREQ_CONTROL, EZRP_PROP_FREQ_CONTROL_FRAC2,
        (uint8_t)(frac>>0));

    /* Set the window gating period to 0x20 as recommended */
    si446x_set_property(EZRP_PROP_FREQ_CONTROL, EZRP_PROP_FREQ_CONTROL_W_SIZE,
        0x20);

    /* Set the target count based on our fixed IF, the W_SIZE, and OUTDIV */
    vcocnt = -((0x20 * (uint32_t)outdiv)/128);
    si446x_set_property(EZRP_PROP_FREQ_CONTROL,
        EZRP_PROP_FREQ_CONTROL_VCOCNT_RX_ADJ, vcocnt);

    /* Set deviation.
     * MODEM_FREQ_DEV = (2^19 * outdiv * dev)/(NPRESC * xo)
     * Since NPRESC=2 we just multiply dev by 2^18 instead.
     */
    //freq_dev = (((uint64_t)dev<<18) * outdiv)/xo;
    //si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_FREQ_DEV0,
    //    (uint8_t)(freq_dev>>16));
    //si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_FREQ_DEV1,
    //    (uint8_t)(freq_dev>>8));
    //si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_FREQ_DEV2,
    //    (uint8_t)(freq_dev>>0));

    /* Operate on standard fixed IF.
     * Note VCOCNT_RX_ADJ would have to change if we swapped to
     * Scaled or Zero IF.
     */
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_IF_CONTROL,
        EZRP_MODEM_IF_CONTROL_ZEROIF_NORMAL     |
        EZRP_MODEM_IF_CONTROL_FIXIF_FIXED       |
        EZRP_MODEM_IF_CONTROL_ETSI_MODE_DISABLE);

    /* Set IF frequency. We want IF_FREQ_Hz = (xo_freq / 64),
     * and MODEM_IF_FREQ=(2^19 * outdiv * IF_FREQ_Hz)/(2*xo_freq)
     *                  =(2^19 * outdiv * (xo_freq/64)) / (2*xo_freq)
     *                  =(2^19 * outdiv) / 128
     *                  = 2^12 * outdiv
     * We then take the negative of this (since this property is the amount to
     * shift the RX LO and we wish to shift downwards so as to place the signal
     * higher up), and take the lower 18 bits to write to this property.
     * This setting doesn't need to change with data rate or crystal frequency
     * when using Fixed IF mode.
     */
    if_freq = -(outdiv << 12) & 0x03FFFF;
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_IF_FREQ0,
        (uint8_t)(if_freq>>16));
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_IF_FREQ1,
        (uint8_t)(if_freq>>8));
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_IF_FREQ2,
        (uint8_t)(if_freq));

    /* Set band according to OUTDIV, and enable default "high performance" mode
     * (so that NPRESC=2, otherwise calculations above would need to change).
     */
    if(outdiv == 4) {
        band = EZRP_MODEM_CLKGEN_BAND_BAND_FVCO_DIV_4;
    } else if(outdiv == 8) {
        band = EZRP_MODEM_CLKGEN_BAND_BAND_FVCO_DIV_8;
    } else if(outdiv == 12) {
        band = EZRP_MODEM_CLKGEN_BAND_BAND_FVCO_DIV_12;
    } else if(outdiv == 24) {
        band = EZRP_MODEM_CLKGEN_BAND_BAND_FVCO_DIV_24;
    } else {
        return false;
    }

    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_CLKGEN_BAND,
        EZRP_MODEM_CLKGEN_BAND_FORCE_SY_RECAL_FORCE |
        EZRP_MODEM_CLKGEN_BAND_SY_SEL_HIGHPERF      |
        band);

    return true;
}


static bool si446x_configure() {
    
    bool cfg_ok = true;
    struct si446x_chip_status chip_status;
    struct si446x_part_info part_info;
    uint8_t global_config_prop, readback_prop;

    /* Check we have a 446x as expected */
    part_info = si446x_part_info();
    if((part_info.part & 0xFFF0) != 0x4460) {
        return false;
    }

    /* Power up with configured xo/tcxo and xo frequency */
    si446x_power_up(brdcfg->tcxo, brdcfg->xo_freq);

    /* Enable mysterious reserved bit and fast mode and split FIFO */
    global_config_prop = (
        EZRP_GLOBAL_CONFIG_RESERVED                     |
        EZRP_GLOBAL_CONFIG_SEQUENCER_MODE_FAST          |
        EZRP_GLOBAL_CONFIG_FIFO_MODE_SPLIT_FIFO         |
        EZRP_GLOBAL_CONFIG_PROTOCOL_GENERIC             |
        EZRP_GLOBAL_CONFIG_POWER_MODE_HIGH_PERF
    );
    si446x_set_property(EZRP_PROP_GLOBAL, EZRP_PROP_GLOBAL_CONFIG,
        global_config_prop);

    /* Read back that parameter to check we're writing OK */
    readback_prop = si446x_get_property(
        EZRP_PROP_GLOBAL, EZRP_PROP_GLOBAL_CONFIG);
    if(readback_prop != global_config_prop) {
        return false;
    }

    if(brdcfg->tcxo) {
        /* Tune adjustment to zero for TCXO */
        si446x_set_property(EZRP_PROP_GLOBAL, EZRP_PROP_GLOBAL_XO_TUNE, 0x00);
    }

    /* Modem config *********************************************************/
    /* Set modulation to CW */
    uint8_t mod_type;
    mod_type = EZRP_MODEM_MOD_TYPE_MOD_TYPE_CW;    
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_MOD_TYPE,
        EZRP_MODEM_MOD_TYPE_TX_DIRECT_MODE_TYPE_SYNC    |
        EZRP_MODEM_MOD_TYPE_MOD_SOURCE_PACKET           |
        mod_type);

    /* Select BCR phase source as phase computer. Don't know why. */
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_MDM_CTRL,
        EZRP_MODEM_MDM_CTRL_PH_SRC_SEL_PHASE_COMPUTER);

    /* Entirely undocumented with literally no idea what to do about it.
     * So..
     */
    si446x_set_property(EZRP_PROP_MODEM,
        EZRP_PROP_MODEM_IFPKD_THRESHOLDS, 0xE8);

     /* AFC gearing. TODO: Probably also needs setting automatically. */
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AFC_GEAR,
        EZRP_MODEM_AFC_GEAR_GEAR_SW_PREAMBLE    |
        EZRP_MODEM_AFC_GEAR_AFC_FAST(0)         |
        EZRP_MODEM_AFC_GEAR_AFC_SLOW(0));

    /* Enable AFC, default gains. TODO: Set automatically. */
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AFC_GAIN0,
        EZRP_MODEM_AFC_GAIN_ENAFC_ENABLE                |
        EZRP_MODEM_AFC_GAIN_AFCBD_ENABLE                |
        EZRP_MODEM_AFC_GAIN_AFC_GAIN_DIV_NO_REDUCTION   |
        EZRP_MODEM_AFC_GAIN_AFCGAIN_12_8(0x00));
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AFC_GAIN1,
        EZRP_MODEM_AFC_GAIN_AFCGAIN_7_0(0x0A));

    /* AFC limit */
    /* TODO set automatically, based on expected required RX BW due to both
     * frequency inaccuracy on both ends and due to Doppler shift */
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AFC_LIMITER0, 0x75);
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AFC_LIMITER1, 0x35);

    /* AFC wait */
    /* TODO set automatically based on data rate */
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AFC_WAIT, 0x12);

    /* AFC enable PLL correction and other recommended settings */
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AFC_MISC,
        EZRP_MODEM_AFC_MISC_ENAFCFRZ_AFC_FRZN_AFTER_GEAR_SW |
        EZRP_MODEM_AFC_MISC_ENFBPLL_ENABLE_AFC_COR_POLL     |
        EZRP_MODEM_AFC_MISC_EN2TB_EST_AFC_COR_2TB           |
        EZRP_MODEM_AFC_MISC_ENFZPMEND_NO_AFC_FRZN           |
        EZRP_MODEM_AFC_MISC_ENAFC_CLKSW_NO_CLK_SW           |
        EZRP_MODEM_AFC_MISC_NON_FRZEN_AFC_FRZN_CONSEC_BITS  |
        EZRP_MODEM_AFC_MISC_LARGE_FREQ_ERR_DISABLED);

    /* TODO: ??? */
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AGC_RFPD_DECAY, 0xED);
    si446x_set_property(EZRP_PROP_MODEM, EZRP_PROP_MODEM_AGC_IFPD_DECAY, 0xED);

    
    /* PA config *************************************************************/
    /* Class E match PA, maximum output power.
     * We change PA_SEL and PA_BIAS_CLKDUTY based on device type,
     * as suggested in the API documentation.
     */
    uint8_t prop_pa_mode = EZRP_PA_MODE_EXT_PA_RAMP_DISABLE |
                           EZRP_PA_MODE_DIG_PWR_SEQ_DISABLE |
                           EZRP_PA_MODE_PA_MODE_CLE;
    uint8_t prop_pa_bias_clkduty = 0;
    if(part_info.part == 0x4460) {
        prop_pa_mode |= EZRP_PA_MODE_PA_SEL_LP;
        prop_pa_bias_clkduty = EZRP_PA_BIAS_CLKDUTY_CLK_DUTY_SINGLE_25;
    } else if(part_info.part == 0x4461) {
        prop_pa_mode |= EZRP_PA_MODE_PA_SEL_MP;
        prop_pa_bias_clkduty = EZRP_PA_BIAS_CLKDUTY_CLK_DUTY_DIFF_50;
    } else if(part_info.part == 0x4463 || part_info.part == 0x4464) {
        prop_pa_mode |= EZRP_PA_MODE_PA_SEL_HP_COARSE;
        prop_pa_bias_clkduty = EZRP_PA_BIAS_CLKDUTY_CLK_DUTY_DIFF_50;
    }
    si446x_set_property(EZRP_PROP_PA, EZRP_PROP_PA_MODE,
        prop_pa_mode);
    si446x_set_property(EZRP_PROP_PA, EZRP_PROP_PA_PWR_LVL,
        EZRP_PA_PWR_LVL_MAXIMUM);
    si446x_set_property(EZRP_PROP_PA, EZRP_PROP_PA_BIAS_CLKDUTY,
        prop_pa_bias_clkduty);

    
    /* Set up clock output if enabled */
    si446x_set_property(EZRP_PROP_GLOBAL, EZRP_PROP_GLOBAL_CLK_CFG,
        (brdcfg->clk_out_enable << 6) | (brdcfg->clk_out_div << 3));

    /* Set up GPIOs as per the brdcfg. */
    struct si446x_gpio_pin_cfg pin_cfg_set = {
        .gpio0 = brdcfg->gpio0,
        .gpio1 = brdcfg->gpio1,
        .gpio2 = brdcfg->gpio2,
        .gpio3 = brdcfg->gpio3,
        .nirq  = EZRP_GPIO_PIN_CFG_NIRQ,
        .sdo   = EZRP_GPIO_PIN_CFG_SDO,
        .gen_config = EZRP_GPIO_PIN_CFG_GEN_CONFIG_DRV_STRENGTH_LOW,
    };
    si446x_gpio_pin_cfg(pin_cfg_set);

    /* Set the FRRs to something useful.
     * A: Current state
     * B: Modem interrupts
     * C: Packet handler interrupts
     * D: Chip interrupts
     * Don't change this without updating si446x_read_frr_state etc.
     */
    si446x_set_frr(EZRP_FRR_CURRENT_STATE, EZRP_FRR_INT_MODEM_STATUS,
                   EZRP_FRR_INT_PH_STATUS, EZRP_FRR_INT_CHIP_STATUS);

    /* Check chip status looks OK */
    chip_status = si446x_get_chip_status(0);
    if(chip_status.chip_status & EZRP_CHIP_STATUS_CMD_ERROR) {
        return false;
    } else {
        return cfg_ok;
    }
}

/* Dump the chip's entire config out */
void si446x_dump_params(void (*cb)(uint8_t group, uint8_t prop, uint8_t val)) {
    if(cb == NULL) {
        return;
    }

    /* {Group ID, number of properties} */
    uint8_t groups[][2] = {
        {EZRP_PROP_GLOBAL,          0x09},
        {EZRP_PROP_INT_CTL,         0x03},
        {EZRP_PROP_FRR_CTL,         0x03},
        {EZRP_PROP_PREAMBLE,        0x0d},
        {EZRP_PROP_SYNC,            0x05},
        {EZRP_PROP_PKT,             0x39},
        {EZRP_PROP_MODEM,           0x5f},
        {EZRP_PROP_MODEM_CHFLT,     0x23},
        {EZRP_PROP_PA,              0x06},
        {EZRP_PROP_SYNTH,           0x07},
        {EZRP_PROP_MATCH,           0x0b},
        {EZRP_PROP_FREQ_CONTROL,    0x07},
        {EZRP_PROP_RX_HOP,          0x01},
        {EZRP_PROP_PTI,             0x03},
    };

    size_t i, prop;
    for(i=0; i<sizeof(groups)/sizeof(groups[0]); i++) {
        for(prop=0; prop<=groups[i][1]; prop++) {
            uint8_t group = groups[i][0];
            uint8_t val = si446x_get_property(group, prop);
            (*cb)(group, prop, val);
        }
    }
}

bool si446x_init(const struct si446x_board_config* new_brdcfg)
{
    bool rv;

    /* Grab global reference to the config.
     * We use these all over the place so...
     */
    brdcfg = new_brdcfg;

    spiAcquireBus(brdcfg->spid);

    /* Power cycle the chip if we can, to ensure it's in a known state. */
    if(brdcfg->sdn != 0) {
        palSetLine(brdcfg->sdn);
        chThdSleepMilliseconds(10);
        palClearLine(brdcfg->sdn);
        chThdSleepMilliseconds(100);
    }

    spiStart(brdcfg->spid, &(brdcfg->spi_cfg));

    /* Attempt the full radio configuration. */
    if(si446x_configure()) {
        rv = true;
    } else {
        rv = false;
    }

    spiReleaseBus(brdcfg->spid);

    return rv;
}

void si446x_set_power(uint8_t pwr_lvl){
    if(pwr_lvl <= 127) {
        si446x_set_property(EZRP_PROP_PA, EZRP_PROP_PA_PWR_LVL, pwr_lvl);
    }
}

bool rtty_tx(uint8_t tone){
    
    uint32_t out_freq;
    
    /* Select tone */
    if(tone == RTTY_LOW){
        out_freq = brdcfg->rtty_low_freq;
    } else {
        out_freq = brdcfg->rtty_high_freq;
    }

    /* Set centre frequency */
    if(!si446x_set_freq(out_freq, brdcfg->xo_freq)) {
        return false;
    }

    spiAcquireBus(brdcfg->spid);

    /* Start TX. Channel 0, return to READY */
    uint8_t buf[7] = {EZRP_START_TX, 0, EZRP_START_TX_TXCOMPLETE_STATE(EZRP_STATE_READY), 
                    0, 0, 0, 0};
    si446x_send_command(buf, sizeof(buf), NULL, 0);

    spiReleaseBus(brdcfg->spid);

    return true;
}

void si446x_shutdown(void){

    if(brdcfg->sdn != 0) {
        palSetLine(brdcfg->sdn);
    }
}