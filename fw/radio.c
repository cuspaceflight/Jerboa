#include "ch.h"
#include "hal.h"

#include <string.h>
#include "radio.h"
#include "si446x.h"

#define TIMEPERIOD 10  // RTTY time period in ms
#define ASCII_BITS 7
#define START_BIT 0
#define STOP_BIT 1
#define NUM_STOP_BITS 2

/* Board configuration.
 * This tells the Si446x driver what our hardware looks like.
 */
static struct si446x_board_config brdcfg = {
    .spid = &SPID1,
    .spi_cfg = {
        .end_cb = NULL,
        .ssport = PAL_PORT(LINE_RADIO_NSS),
        .sspad = PAL_PAD(LINE_RADIO_NSS),
        .cr1 = SPI_CR1_BR_2,
    },
    .sdn = LINE_RADIO_SDN,
    .nirq = LINE_RADIO_NIRQ,
    .gpio0 = si446x_gpio_mode_tristate,
    .gpio1 = si446x_gpio_mode_tristate,
    .gpio2 = si446x_gpio_mode_tristate,
    .gpio3 = si446x_gpio_mode_tx_state,
    .clk_out_enable = true,
    .clk_out_div = si446x_clk_out_div_2,
    .tcxo = true,
    .xo_freq = 26000000,
    .rtty_low_freq = 434000000,
    .rtty_high_freq = 434001000,
};

static void rtty_txbit(char b)
{
  if(b)
  {
    // Transmit 1
    palSetPad(GPIOA, GPIOA_LED);
    rtty_tx(RTTY_HIGH);
  }
  else
  {
    // Transmit 0
    palClearPad(GPIOA, GPIOA_LED);
    rtty_tx(RTTY_LOW);
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

#ifdef START_BIT
  rtty_txbit(START_BIT);
#endif

  for(uint8_t i = 0; i < ASCII_BITS; i++)
  {
    rtty_txbit(c & 1);
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
  /* Power up Si446x */
  palSetPad(GPIOB, GPIOB_RADIO_PWR_EN);
  while(!si446x_init(&brdcfg));

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

  /* Power down Si446x */
  si446x_shutdown();
  palClearPad(GPIOB, GPIOB_RADIO_PWR_EN);
}
