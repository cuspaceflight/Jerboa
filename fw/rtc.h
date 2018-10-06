/*
 * RTC
 *
 *  Created on: 6 Oct 2018
 *      Author: Greg Brooks
 */

#ifndef _RTC_H_
#define _RTC_H_

/**
 * Set RTC wakeup period in seconds (1s to around 36h possible)
 * Valid input range: 0 (disable wakeup) to 0x20000 (2^17 + 1)
 * Values above 0x20000 are reduced to 0x20000
 */
void rtc_set_wakeup_period_seconds(uint32_t duration);

#endif /* _RTC_H_ */
