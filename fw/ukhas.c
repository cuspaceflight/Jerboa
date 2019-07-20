#include <stdio.h>
#include "ukhas.h"

#define CALLSIGN "JERBOA"
#define MIN_LEN 8
#define CSUM_NL 6

/*
 * Taken from AVR libc
 * http://www.nongnu.org/avr-libc/user-manual/group__util__crc.html#gaca726c22a1900f9bad52594c8846115f
 *
 * Optimized CRC-XMODEM calculation.
 *
 * Polynomial: x^16 + x^12 + x^5 + 1 (0x1021)
 * Initial value: 0x0
 *
 * This is the CRC used by the Xmodem-CRC protocol.
 *
 * The following is the equivalent functionality written in C.
 */
static uint16_t crc_xmodem_update (uint16_t crc, uint8_t data)
{
  int i;

  crc = crc ^ ((uint16_t)data << 8);
  for (i=0; i<8; i++)
  {
    if (crc & 0x8000)
      crc = (crc << 1) ^ 0x1021;
    else
      crc <<= 1;
  }

  return crc;
}

/*
 * Calculate crc16 checksum for packet and populate relevant struct member
 * pckt    -- pointer to packet to modify
 * returns -- value placed into packet's checksum member
 */
static void ukhas_crc16(char* telem_string, size_t len)
{
  uint16_t crc = 0xFFFF;
  uint8_t i;
  for(i = 0; i < len; i++)
  {
    crc = crc_xmodem_update(crc, telem_string[i]);
  }
  chsnprintf(telem_string + len, 5, "*%04X", crc);
}

void ukhas_populate_from_gps(const ublox_pvt_t* gps_pckt, UkhasPckt* ukhas_pckt)
{
  ukhas_pckt->time[0] = gps_pckt->hour;
  ukhas_pckt->time[1] = gps_pckt->minute;
  ukhas_pckt->time[2] = gps_pckt->second;
  ukhas_pckt->lat = gps_pckt->lat;
  ukhas_pckt->lon = gps_pckt->lon;
  ukhas_pckt->alt = gps_pckt->h_msl/ 1000;       // m above MSL
  ukhas_pckt->num_sats = gps_pckt->num_sv;
  ukhas_pckt->lock = gps_pckt->flags & 1;
}

void ukhas_populate_misc(UkhasPckt* ukhas_pckt)
{
  ukhas_pckt->ticks = chVTGetSystemTime();
  ukhas_pckt->voltage = 0;  //TODO: replace with ADC measurement
}

size_t ukhas_print(const UkhasPckt* pckt, char* print_addr, size_t len)
{
  size_t len_str;
  if(len >= MIN_LEN) len_str = len - CSUM_NL;  // Checksum & newline added later
  else len_str = 0;  // Else this is the first pass to find string length
  size_t rtn = chsnprintf(print_addr, len_str,
                        "$$" CALLSIGN ",%lu,%02u:%02u:%02u,%d,%d,%ld,"
                            "%u,%u,%u",
                        (uint32_t)pckt->ticks, pckt->time[0], pckt->time[1],
                        pckt->time[2], pckt->lat, pckt->lon, pckt->alt,
                        pckt->num_sats, pckt->lock, pckt->voltage);
  rtn += CSUM_NL;  // Space for checksum & newline

  if(print_addr != NULL && len >= MIN_LEN)
  {
    // Add checksum & newline
    // Checksum ignores starting $$
    ukhas_crc16(print_addr + 2*sizeof(char), len - CSUM_NL - 2);
    print_addr[len-1] = '\n';
  }

  return rtn;
}
