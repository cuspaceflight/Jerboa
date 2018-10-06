/**
 * CUSF 2018
 */

#include "ch.h"
#include "hal.h"

#include "pwr.h"
#include "rtc.h"

/**
 * Main loop
 */
int main(void)
{
	/* Initialise ChibiOS */
	halInit();

	bool FIRST_BOOT = false;
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
	else
	{
		FIRST_BOOT = true;
	}

	chSysInit();

	if(FIRST_BOOT)
	{
		FIRST_BOOT = false;
		/* Leave LED on to signal first boot */
		palSetPad(GPIOA, GPIOA_LED);
		chThdSleepSeconds(5);
		palClearPad(GPIOA, GPIOA_LED);
	}

	/* Shutdown radio system */
	palClearPad(GPIOB, GPIOB_RADIO_PWR_EN);

	/* Shutdown GPS */
	// TODO: Need to configure GPS here to be shutdown by EXTINT
	palClearPad(GPIOA, GPIOA_GPS_EXTINT);

	/* Main Loop */
    for(uint8_t i = 0; i < 25; i++) {
    	/* Signal wakeup from sleep */
    	palTogglePad(GPIOA, GPIOA_LED);
        chThdSleepMilliseconds(200);
    }

    pwr_enter_standby_for_seconds(10);

    while(true)
    {
    	/* Shouldn't get here ;) */
    	chThdSleepSeconds(1);
    }
}
