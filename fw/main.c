#include <stdint.h>
#include "ch.h"
#include "hal.h"
#include "chprintf.h"

#include "gps.h"
#include "ukhas.h"


int main(void)
{
	/* Initialise ChibiOS */
	halInit();
	chSysInit();

    /* Configure GPS, do not tx anything without being prompted */
    gps_init(&SD1, false, false);

//    /* Start GPS State Machine */
//    gps_thd_init();

	/* Main Loop */
    while (true) {
      gps_poll_pvt();  // Request PVT message from GPS
      UkhasPckt telem_pckt;

      // Use PVT message to populate telem packet
      chMtxLock(&pvt_pkt_mutex);
      ukhas_populate_from_gps(&pvt_pkt, &telem_pckt);
      chMtxUnlock(&pvt_pkt_mutex);

      ukhas_populate_misc(&telem_pckt);  // Populate the rest of the telem packet

      size_t s = ukhas_print(&telem_pckt, NULL, 0);
      char telem_string[s];
      ukhas_print(&telem_pckt, telem_string, s+1);  // +1 len to include null terminator

      palTogglePad(GPIOA, GPIOA_LED);
      chThdSleepSeconds(1);
    }
}
