/**
 * CUSF 2018
 */

#include <stdint.h>

#include "ch.h"
#include "hal.h"
#include "chprintf.h"

#include "gps.h"
#include "ukhas.h"
#include "radio.h"
#include "pwr.h"
#include "rtc.h"

static void sleep(uint32_t seconds)
{
  /* Shutdown radio system */
  palClearPad(GPIOB, GPIOB_RADIO_PWR_EN);

  /* Shutdown GPS */
  // TODO: Need to configure GPS here to be shutdown by EXTINT
  palClearPad(GPIOA, GPIOA_GPS_EXTINT);

  pwr_enter_standby_for_seconds(seconds);
}

static void transmit(void)
{
  static ublox_pvt_t pvt_pckt;
  gps_poll_pvt(&pvt_pckt);  // Request PVT message from GPS
  UkhasPckt telem_pckt;

  ukhas_populate_from_gps(&pvt_pckt, &telem_pckt);  // Use PVT message to populate telem packet
  ukhas_populate_misc(&telem_pckt);  // Populate the rest of the telem packet

  size_t s = ukhas_print(&telem_pckt, NULL, 0);
  char telem_string[s+1];
  ukhas_print(&telem_pckt, telem_string, s+1);  // +1 len to include null terminator
  radio_tx(telem_string, s);  // Don't send terminator so can use s instead of s+1
}

static inline void setup(void)
{
  /* Initialise ChibiOS */
  halInit();

  //  bool FIRST_BOOT = false;
  if(RTC->ISR & RTC_ISR_WUTF)
  {
      /* Wakeup timer flag set, needs clearing */
      RTC->ISR &= ~RTC_ISR_WUTF;
      rtc_set_wakeup_period_seconds(0);  // Disable wakeup timer
  }
  if(PWR->CSR & PWR_CSR_SBF)
  {
      /* Woken from standby */
      PWR->CR |= PWR_CR_CSBF;  // Clear the flag
  }
//    else
//    {
//        FIRST_BOOT = true;
//    }


  chSysInit();

//  if(FIRST_BOOT)
//    {
//        FIRST_BOOT = false;
//        /* Do things here */
//    }

  /* Start radio system */
  palSetPad(GPIOB, GPIOB_RADIO_PWR_EN);

  /* Start GPS */
  palSetPad(GPIOA, GPIOA_GPS_EXTINT);

  chThdSleepMilliseconds(300);

  /* Configure GPS, do not tx anything without being prompted */
  gps_init(&SD1, false, false);

//    /* Start GPS State Machine */
//    gps_thd_init();
}

/**
 * Main loop
 */
int main(void)
{
  setup();

  for(uint8_t i = 0; i < 5; i++)
  {
    transmit();
  }

  sleep(3);

  /* Main Loop */
  while (true) {
    // Shouldn't get here
    chThdSleepSeconds(1);
  }
}
