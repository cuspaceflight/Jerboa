#include "ch.h"
#include "hal.h"

#include <string.h>
#include "labrador.h"
#include "si446x.h"
#include "radio.h"

static uint8_t labrador_wa[16];

/* Board configuration.
 * This tells the Si446x driver what our hardware looks like.
 */
static struct si446x_board_config brdcfg = {
    .spid = &SPID1,
    .spi_cfg = {
        .end_cb = NULL,
        .ssport = GPIOA,
        .sspad = GPIOA_RADIO_NSS,
        .cr1 = SPI_CR1_BR_2,
    },
    .sdn = LINE_RADIO_SDN,
    .nirq = LINE_RADIO_NIRQ,
    .gpio0 = si446x_gpio_mode_tristate,
    .gpio1 = si446x_gpio_mode_tristate,
    .gpio2 = si446x_gpio_mode_tristate,
    .gpio3 = si446x_gpio_mode_tx_state,
    .clk_out_enable = false,
    .clk_out_div = si446x_clk_out_div_1,
    .tcxo = true,
    .xo_freq = 26000000,
};


/* Labrador configuration.
 * This specifies our Labrador frequency, baud, codes, encoder/decoder, etc.
 */
static struct labrador_config labcfg = {
    .freq = 434000000,
    .baud = 2000,
    .tx_code = LDPC_NONE,
    .rx_code = LDPC_NONE,
    .ldpc_none_rxlen = 0,
    .ldpc_none_txlen = 16,
    .ldpc_ms_decoder = true,
    .rx_enabled = false,
    .workingarea = labrador_wa,
    .workingarea_size = sizeof(labrador_wa),
};


/* Labrador radio config. Passed between Labrador and Si446x driver.
 */
static struct labrador_radio_config labradcfg;


/* Labrador statistics. Updated by Labrador, read by us.
 */
static struct labrador_stats labstats;


/* Radio Thread Function */
static THD_WORKING_AREA(radio_thd_wa, 32);
static THD_FUNCTION(radio_thd, arg) {

    (void)arg;

    /* Initialise Labrador systems */
    while(labrador_init(&labcfg, &labradcfg, &labstats, &labrador_radio_si446x) != LABRADOR_OK){
        chThdSleepMilliseconds(1000);
    }

    /* Initialise the Si446x driver */
    while(!si446x_init(&brdcfg, &labradcfg)){
        chThdSleepMilliseconds(1000);
    }

    /* Backhaul Position Data */
    while (true) {

        uint8_t txbuf[16] = "hello i am a rat";

        /* Send a Position Packet */
        labrador_err result = labrador_tx(txbuf);

        /* Check Status */
        if(result == LABRADOR_OK) {
            palSetPad(GPIOA, GPIOA_LED);
            chThdSleepMilliseconds(200);
            palClearPad(GPIOA, GPIOA_LED);
        } else {
            palClearPad(GPIOA, GPIOA_LED);
            chThdSleepMilliseconds(200);     
        }
        
        /* Sleep */
        chThdSleepMilliseconds(300);     

    }
}

/* Start Radio Thread */
void jerboa_labrador_init(void){
    chThdCreateStatic(radio_thd_wa, sizeof(radio_thd_wa), NORMALPRIO, radio_thd, NULL);
}