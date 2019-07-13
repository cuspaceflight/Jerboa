#ifndef __RADIO_H__
#define __RADIO_H__

#include "ch.h"
#include "hal.h"

/*
 * Transmit a string over the radio (RTTY)
 *
 * txbuf -- pointer to string to transmit
 * len   -- length of string to transmit (excluding null terminator)
 */
void radio_tx(char txbuf[], size_t len);

#endif /*__RADIO_H__*/
