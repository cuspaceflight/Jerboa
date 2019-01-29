#ifndef __HABPACK_H__
#define __HABPACK_H__

#include "ch.h"
#include "hal.h"

/*
 * Sourced from UKHAS
 * https://ukhas.org.uk/communication:habpack
 */

typedef enum habpack_field_id {
  HPFI_CALLSIGN = 0,  // string/uint
  HPFI_SENTENCEID = 1,  // uint
  HPFI_TIME = 2,  // uint seconds past midnight UTC / unix epoch time (seconds)
  HPFI_POSITION = 3,  // 2or3 element signed int [lat, long, <alt>] 1e-7 deg;metres
  HPFI_NUMSAT = 4,  // uint
  HPFI_GNSSLOCK = 5,  // [0: none, 1: time, 2: 2D, 3: 3D, 4: 3D+SBAS] (unsigned integer)
  HPFI_VOLTAGE = 6,  // float as volts or signed int millivolts
  HPFI_INTTEMP = 10,  // (float as degrees C or signed integer as milli-degrees C)
  HPFI_EXTTEMP = 11,  // (float as degrees C or signed integer as milli-degrees C)
  HPFI_PRESSURE = 12,  // (float as bar, or unsigned integer as milli-bar)
}HabpackFieldId;

/*
 * Habpack packet
 * When a field is set, set the associated bit in the bitfield so that the field is printed
 *  else clear the bit to ignore that field when printing the packet
 */
typedef struct habpack_pckt {
  char* callsign;
  uint32_t time;
  int32_t position[3];  // lat, lon, alt
  uint8_t num_sats;
  uint8_t lock;
  uint32_t voltage;
  uint32_t internal_temp;
  uint32_t external_temp;
  uint32_t pressure;
  struct {
    bool time : 1;
    bool position : 1;
    bool num_sats : 1;
    bool lock : 1;
    bool voltage : 1;
    bool internal_temp : 1;
    bool external_temp : 1;
    bool pressure : 1;
  }flags;

}HabpackPckt;

/*
 * Print a HabpackPckt as a string for transmission.
 * Run once with null print_addr to return required size
 * Then allocate memory for a char array of that size
 * Then run again with print_addr pointing to this memory location
 * E.g.:
 *      size_t s = habpack_print(pckt, NULL);
 *      char mystr[s];
 *      habpack_print(pckt, mystr);
 *
 * pckt       - HabpackPckt structure to print
 * print_addr - Memory location to store resulting string (NULL if size not yet known)
 * returns    - size of printed string
 */
size_t habpack_print(HabpackPckt* pckt, char* print_addr);

#endif /*__HABPACK_H__*/
