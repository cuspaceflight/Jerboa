#include <stdint.h>
#include "ch.h"
#include "hal.h"
#include "chprintf.h"

#include "gps.h"
#include "ukhas.h"
#include "radio.h"


int main(void)
{
	/* Initialise ChibiOS */
	halInit();
	chSysInit();
	
	ukhas_init();
	radio_init();
	radio_set_freq(true);  // 434MHz
	
	/* Turn on the watchdog timer, stopped in debug halt */
    DBGMCU->APB1FZ |= DBGMCU_APB1_FZ_DBG_IWDG_STOP;
    IWDG->KR = 0x5555;
    IWDG->PR = 0b111;
    IWDG->KR = 0xCCCC;
    while(IWDG->SR)
    {
      // Wait for registers to be set
    };
    
    /* Allow access during WFI sleep */
    DBGMCU->CR |= DBGMCU_CR_DBG_SLEEP;

    /* Configure GPS, do not tx anything without being prompted */
    gps_init(&SD1, false, false);

    ublox_pvt_t pvt_pckt;

	/* Main Loop */
    while (true) {
      gps_poll_pvt(&pvt_pckt);  // Request PVT message from GPS
      UkhasPckt telem_pckt;

      ukhas_populate_from_gps(&pvt_pckt, &telem_pckt);  // Use PVT message to populate telem packet
      ukhas_populate_misc(&telem_pckt);  // Populate the rest of the telem packet

      size_t s = ukhas_print(&telem_pckt, NULL, 0);
      char telem_string[s+1];
      ukhas_print(&telem_pckt, telem_string, s+1);  // include null terminator
      radio_tx(telem_string, s);  // Don't send terminator so can use s instead of s+1
      chThdSleepSeconds(5);
      
      /* Clear the watchdog timer */
      IWDG->KR = 0xAAAA;
    }
}
