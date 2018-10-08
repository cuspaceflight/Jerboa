#ifndef __GPS_H__
#define __GPS_H__

#include "ch.h"
#include "hal.h"
#include "packets.h"


/* NAV-POSECEF Payload Data */
typedef struct __attribute__((packed)) {
    uint32_t i_tow;
    int32_t ecef_x, ecef_y, ecef_z;
    uint32_t p_acc;
} ublox_posecef_t;


/* NAV-PVT Payload Data */
typedef struct __attribute__((packed)) {
    uint32_t i_tow;
    uint16_t year;
    uint8_t month, day, hour, minute, second;
    uint8_t valid;
    uint32_t t_acc;
    int32_t nano;
    uint8_t fix_type;
    uint8_t flags;
    uint8_t reserved1;
    uint8_t num_sv;
    int32_t lon, lat;
    int32_t height, h_msl;
    uint32_t h_acc, v_acc;
    int32_t velN, velE, velD, gspeed;
    int32_t head_mot;
    uint32_t s_acc;
    uint32_t head_acc;
    uint16_t p_dop;
    uint16_t reserved2;
    uint32_t reserved3;
    int32_t head_veh;
    uint32_t reserved4;
} ublox_pvt_t;


/* Global Position Packet */
extern position_packet pos_pkt;

/* Position Packet Mutex */
extern mutex_t pos_pkt_mutex;

/* Configure uBlox GPS */
void gps_init(SerialDriver* seriald, bool nav_pvt, bool nav_posecef,
                bool rising_edge);

/* Init GPS Thread */
void gps_thd_init(void);

#endif /*__GPS_H__*/
