/* Si446x Radio Driver
 * Copyright 2016 Adam Greig
 */

#ifndef RADIOS_SI446X_H
#define RADIOS_SI446X_H

#include "hal.h"

#define RTTY_LOW    0
#define RTTY_HIGH   1

/* Available GPIO modes */
enum si446x_gpio_mode {
    si446x_gpio_mode_donothing = 0,
    si446x_gpio_mode_tristate,
    si446x_gpio_mode_drive0,
    si446x_gpio_mode_drive1,
    si446x_gpio_mode_input,
    si446x_gpio_mode_32k_clk,
    si446x_gpio_mode_boot_clk,
    si446x_gpio_mode_div_clk,
    si446x_gpio_mode_cts,
    si446x_gpio_mode_inv_cts,
    si446x_gpio_mode_cmd_overlap,
    si446x_gpio_mode_sdo,
    si446x_gpio_mode_por,
    si446x_gpio_mode_cal_wut,
    si446x_gpio_mode_wut,
    si446x_gpio_mode_en_pa,
    si446x_gpio_mode_tx_data_clk,
    si446x_gpio_mode_rx_data_clk,
    si446x_gpio_mode_en_lna,
    si446x_gpio_mode_tx_data,
    si446x_gpio_mode_rx_data,
    si446x_gpio_mode_rx_raw_data,
    si446x_gpio_mode_antenna_1_sw,
    si446x_gpio_mode_antenna_2_sw,
    si446x_gpio_mode_valid_preamble,
    si446x_gpio_mode_invalid_preamble,
    si446x_gpio_mode_sync_word_detect,
    si446x_gpio_mode_cca,
    si446x_gpio_mode_in_sleep,
    si446x_gpio_mode_pkt_trace,
    si446x_gpio_mode_reserved,
    si446x_gpio_mode_tx_rx_data_clk,
    si446x_gpio_mode_tx_state,
    si446x_gpio_mode_rx_state,
    si446x_gpio_mode_rx_fifo_full,
    si446x_gpio_mode_tx_fifo_empty,
    si446x_gpio_mode_low_batt,
    si446x_gpio_mode_cca_latch,
    si446x_gpio_mode_hopped,
    si446x_gpio_mode_hop_table_wrap,
    si446x_gpio_mode_nirq,
};

enum si446x_clk_out_div {
    si446x_clk_out_div_1 = 0,
    si446x_clk_out_div_2,
    si446x_clk_out_div_3,
    si446x_clk_out_div_7_5,
    si446x_clk_out_div_10,
    si446x_clk_out_div_15,
    si446x_clk_out_div_30,
};

/* This is all the specific configuration the Si446x driver needs.
 */
struct si446x_board_config {
    /* SPI driver and configuration */
    SPIDriver* spid;
    SPIConfig spi_cfg;

    /* If not NULL, the ioline for the radio's SDN pin */
    ioline_t sdn;

    /* If not NULL, the ioline for the radio's nIRQ pin */
    ioline_t nirq;

    /* GPIO mode selecton for each GPIO */
    enum si446x_gpio_mode gpio0, gpio1, gpio2, gpio3;

    /* Enable clock output? */
    bool clk_out_enable;

    /* Clock output division factor */
    enum si446x_clk_out_div clk_out_div;

    /* True if using a TCXO, false for XTAL */
    bool tcxo;

    /* Oscillator frequency in Hz */
    uint32_t xo_freq;

    /* RTTY '0' frequency in Hz */
    uint32_t rtty_low_freq;

    /* RTTY '1' frequency in Hz */
    uint32_t rtty_high_freq;
};

/* Power-cycles, initialises, and configures the radio.
 *
 * This process takes some time and blocks until it is done.
 *
 * The configuration pointers are stored in the module, so:
 * a) don't change them after calling init,
 * b) don't try and init two radios on the same board.
 *
 * Returns true on success, false on failure.
 */
bool si446x_init(const struct si446x_board_config* brdcfg);

/* Request a dump of the radio's configuration.
 *
 * The callback `cb` is called for each property in each group.
 */
void si446x_dump_params(void (*cb)(uint8_t group, uint8_t prop, uint8_t val));

/* Set the radio TX power level.
 * 0 to 127, where 127 is maximum power.
 * Steps are not even close to linear: fine changes around full power,
 * very coarse changes around lower powers.
 */
void si446x_set_power(uint8_t pwr_lvl);

/* TX RTTY Tone.
 * Transmits a CW tone on either the upper or lower RTTY frequency.
 */
bool rtty_tx(uint8_t tone);


/* Shutdown Raio.
 * Call si446x_init() to power up radio.
 */
void si446x_shutdown(void);

#endif
