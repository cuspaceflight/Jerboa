#include "ch.h"
#include "hal.h"

#include "radio.h"

int main(void)
{
	/* Initialise ChibiOS */
	halInit();
	chSysInit();

    /* Start Radio Thread */
    jerboa_labrador_init();

	/* Main Loop */
    while (true) {
        chThdSleepSeconds(1);
    }
}
