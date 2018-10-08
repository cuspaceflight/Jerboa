#include "ch.h"
#include "hal.h"

#include "gps.h"


int main(void)
{
	/* Initialise ChibiOS */
	halInit();
	chSysInit();

    /* Configure GPS to Produce 1MHz Reference */
    gps_init(&SD1, true, false, true);

    /* Start GPS State Machine */
    gps_thd_init();

	/* Main Loop */
    while (true) {
        palTogglePad(GPIOA, GPIOA_LED);
        chThdSleepSeconds(1);
    }
}
