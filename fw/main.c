#include "ch.h"
#include "hal.h"

int main(void)
{
	/* Initialise ChibiOS */
	halInit();
	chSysInit();

	/* Main Loop */
    while (true) {
        palTogglePad(GPIOA, GPIOA_LED);
        chThdSleepSeconds(1);
    }
}
