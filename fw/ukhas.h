#ifndef __UKHAS_H__
#define __UKHAS_H__

#include "ch.h"
#include "hal.h"
#include "gps.h"

/*
 * Based on conventional UKHAS telemetry string format
 * https://ukhas.org.uk
 */
typedef struct ukhas_pckt {
  systime_t ticks;  // Current system time in systicks
  uint8_t time[3];  // hours, minutes, seconds
  int32_t lat, lon;  // deg * 10^7
  int32_t alt;  // m above sea level
  uint8_t num_sats;
  uint8_t lock;  // 1 if valid fix
  uint16_t voltage;
}UkhasPckt;

/*
 * Use UBlox PVT packet to populate relevant fields in UKHAS telem packet
 * gps_pckt   -- pointer to ublox pvt message
 * ukhas_pckt -- pointer to UKHAS telemetry packet
 */
void ukhas_populate_from_gps(const ublox_pvt_t* gps_pckt, UkhasPckt* ukhas_pckt);

/*
 * Populate remaining fields in UKHAS telem packet
 * ukhas_pckt -- pointer to packet to populate
 */
void ukhas_populate_misc(UkhasPckt* ukhas_pckt);

/*
 * Print a UKHAS style string for transmission.
 * Run once with null print_addr and len 0 to return required size
 * Then allocate memory for a char array of that size
 * Then run again with print_addr pointing to this memory location
 * E.g.:
 *      size_t s = ukhas_print(&pckt, NULL, 0);
 *      char mystr[s];
 *      ukhas_print(pckt, mystr, s+1);  // +1 len to include null terminator
 *
 * pckt       -- UkhasPckt structure to print
 * print_addr -- Memory location to store resulting string (NULL if size not yet known)
 * len        -- length of string buffer (incl. null terminator). Set to zero if unknown
 * returns    -- length of printed string, excluding null terminator
 */
/*
 * Populate UKHAS RTTY telemetry packet using ublox pvt message
 */
size_t ukhas_print(const UkhasPckt* pckt, char* print_addr, size_t len);

  #endif /*__UKHAS_H__*/
