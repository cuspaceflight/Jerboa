#include "ch.h"
#include "hal.h"

int main(void)
{
	/* Initialise ChibiOS */
	halInit();
	chSysInit();

	/* Main Loop */
    while (true) {
        /* Do nothing */
        chThdSleepMilliseconds(1000);
    }
}
