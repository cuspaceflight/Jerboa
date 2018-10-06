/*
 * RTC
 *
 *  Created on: 6 Oct 2018
 *      Author: Greg Brooks
 */
#include "ch.h"
#include "hal.h"

#include "rtc.h"

#define CK_SPRE_0_TO_18H   (4 << 16)
#define CK_SPRE_18H_TO_36H (6 << 16)

static RTCWakeup rtc_wakeup_cfg = {
	CK_SPRE_0_TO_18H |  // WUCKSEL=ck_spre (1Hz)
	(19)           		// Wake every 20s by default (19+1)
};

void rtc_set_wakeup_period_seconds(uint32_t duration)
{
	if(duration-- == 0){  // Decrement as duration - 1 must be written to register
		rtcSTM32SetPeriodicWakeup(&RTCD1, NULL); // Clear wakeup
	}
	else if(duration <= 0xFFFF)
	{
		/* 16 bit period, 0 to 18 hours */
		rtc_wakeup_cfg.wutr = CK_SPRE_0_TO_18H | duration;
		rtcSTM32SetPeriodicWakeup(&RTCD1, &rtc_wakeup_cfg);
	}
	else
	{
		/* 17 bit period, 18 to 36 hours */
		if(duration > 0x1FFFF)
		{
			duration = 0x1FFFF;  // Max value
		}
		duration = duration - 0x10000;  // 2^16 will be added to this
		rtc_wakeup_cfg.wutr = CK_SPRE_18H_TO_36H | duration;
		rtcSTM32SetPeriodicWakeup(&RTCD1, &rtc_wakeup_cfg);
	}
}

