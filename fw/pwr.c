/**
 * Low Power Modes
 *
 *  Created on: 6 Oct 2018
 *      Author: Greg Brooks
 */
#include "ch.h"
#include "hal.h"

#include "pwr.h"
#include "rtc.h"

/**
 * https://www.digikey.com/eewiki/display/microcontroller/Low-Power+Modes+on+the+STM32L0+Series#Low-PowerModesontheSTM32L0Series-StandbyMode
 */
void pwr_enter_standby(void)
{
	  /* Enable deep-sleep */
	  SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
	  /* 	 Enable STANDBY mode */
	  PWR->CR |= PWR_CR_PDDS;
	  /* Clear the WUF Wakeup Flag */
	  PWR->CR |= PWR_CR_CWUF;

	  // Clear any RTC interrupts
	  RTC->ISR &= ~(RTC_ISR_ALRBF | RTC_ISR_ALRAF | RTC_ISR_WUTF | RTC_ISR_TAMP1F |
	    RTC_ISR_TSOVF | RTC_ISR_TSF);

	  __SEV(); // Make sure there is an event present
	  __WFE(); // Clear the event
	  __WFE(); // Go to sleep (knowing no events are present)
}

void pwr_enter_standby_for_seconds(uint32_t duration)
{
	rtc_set_wakeup_period_seconds(duration);

	chSysLock();
	while(true)
	{
		/* Make sure we enter standby */
		pwr_enter_standby();
	}
}




