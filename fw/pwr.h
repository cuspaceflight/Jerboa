/*
 * Low Power Modes
 *
 *  Created on: 6 Oct 2018
 *      Author: Greg Brooks
 */

#ifndef _PWR_H_
#define _PWR_H_

/**
 * Enter standby for the given number of seconds
 * Valid input range: 0 (disable wakeup) to 0x20000 (2^17 + 1)
 * Values above 0x20000 are reduced to 0x20000
 */
void pwr_enter_standby_for_seconds(uint32_t duration);

#endif /* _PWR_H_ */
