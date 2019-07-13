#include "ch.h"
#include "hal.h"

#include <string.h>
#include "radio.h"

#define TIMEPERIOD 20  // RTTY time period in ms
#define ASCII_BITS 7
#define START_BIT 0
#define STOP_BIT 1
#define NUM_STOP_BITS 2

static void rtty_txbit(char b)
{
  if(b)
  {
    // Transmit 1
    // TODO: actually transmit instead of blinking LED
    palSetPad(GPIOA, GPIOA_LED);
  }
  else
  {
    // Transmit 0
    // TODO: actually transmit instead of blinking LED
    palClearPad(GPIOA, GPIOA_LED);
  }
  chThdSleepMilliseconds(TIMEPERIOD);
}

/* Transmit byte
 * 7 bit ascii
 * LSB first
 * 0 start bit
 * 1 stop bit
 */
static void rtty_txchar(char c)
{
#define TIMEPERIOD 20    // RTTY time period in ms
#define ASCII_BITS 7     // Choose 7 or 8 bit ascii
#define START_BIT 0      // Comment out for no start bit
#define STOP_BIT 1       // Comment out for no stop bit(s)
#define NUM_STOP_BITS 2  // Comment out for no stop bit(s)

#ifdef START_BIT
  rtty_txbit(START_BIT);
#endif

  for(uint8_t i = 0; i < ASCII_BITS; i++)
  {
    rtty_txbit(c && 1);
    c >>= 1;
  }

#if defined(STOP_BIT) && defined(NUM_STOP_BITS)
  for(size_t j = 0; j < NUM_STOP_BITS; j++)
  {
    rtty_txbit(STOP_BIT);
  }
#endif
}

void radio_tx(char txbuf[], size_t len)
{
  for(size_t i = 0; i < len; i++)
  {
    if(txbuf[i] == '\0')
    {
      return;
    }
    else
    {
      rtty_txchar(txbuf[i]);
    }
  }
}
