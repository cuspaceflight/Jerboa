#include <stdio.h>
#include "ukhas.h"

#include "ch.h"
#include "hal.h"

#define CALLSIGN "JERBOA"
#define MIN_LEN 8
#define CSUM_NL 6

#define NUM_SAMP 3  // Number of ADC samples to average

static binary_semaphore_t adc_conv_sem;

static void adccallback(ADCDriver *adcp, adcsample_t *buffer, size_t n);

static const ADCConversionGroup adc_grp_batt = {
  .circular = false,
  .num_channels = 1,
  .end_cb = adccallback,
  .error_cb = NULL,
  .cfgr1 = ADC_CFGR1_AUTOFF,  // enable auto off
  .cfgr2 = ADC_CFGR2_OVSS_1 | ADC_CFGR2_OVSR_0 | ADC_CFGR2_OVSE,
  .tr = ADC_TR_HT_Msk,  // default value
  .smpr = 0,
//  .smpr2 = ADC_SMPR2_SMP_AN8(ADC_SAMPLE_84),
  .chselr = ADC_CHSELR_CHSEL8,
//  .sqr1 = ADC_SQR1_NUM_CH(1),
//  .sqr2 = 0,
//  .sqr3 = ADC_SQR3_SQ1_N(ADC_CHANNEL_IN8),
};

/* ADC Callback */
static void adccallback(ADCDriver *adcp, adcsample_t *buffer, size_t n){

  (void)adcp;
  (void)buffer;
  (void)n;

  chSysLockFromISR();
  chBSemSignalI(&adc_conv_sem);
  chSysUnlockFromISR();
}

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

/* Convert the 12bit ADC reading into a 10mV/LSB voltage. */
static uint16_t adc_to_voltage(adcsample_t reading) {
  uint32_t buf = 330 * reading;
  return (uint16_t)(buf / 4096);
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
  
  // Take ADC measurement
  adcsample_t samp;
  
//  adcAcquireBus(&ADCD1);
  adcConvert(&ADCD1, &adc_grp_batt, &samp, 1);
//  adcReleaseBus(&ADCD1);
//  uint32_t sum = 0;
//  for(size_t i = 0; i < NUM_SAMP; i++)
//  {
//    sum += samp[i];
//  }
//  adcsample_t mean = sum / NUM_SAMP;  // Round down by default
//  if(sum % NUM_SAMP > NUM_SAMP - sum % NUM_SAMP) mean++;  // Round up
  chBSemWait(&adc_conv_sem);

  ukhas_pckt->voltage = adc_to_voltage(samp);
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



void ukhas_init(void)
{
  adcStart(&ADCD1, NULL);
  chBSemObjectInit(&adc_conv_sem, false);
}
