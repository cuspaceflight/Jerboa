#include "ch.h"
#include "hal.h"

typedef enum jerboa_state
{
    STATE_FIRST_BOOT = 0,
    STATE_WAKEUP,
    STATE_SLEEP,
    STATE_GET_GPS,
    STATE_SEND_RADIO,
    NUM_STATES
} jerboa_state;

static void jerboa_state_machine(void)
{
    static jerboa_state state = STATE_FIRST_BOOT;

    switch(state)
    {
        case STATE_FIRST_BOOT:
            /*
             * TODO: if there is enough power, init things here
             *       else go back to sleep for some time interval
             */
            state = STATE_GET_GPS;
            break;
        case STATE_WAKEUP:
            /*
             * TODO: if there is enough power, wakeup
             *       else go back to sleep for some time interval
             */
            state = STATE_GET_GPS; // TODO: = STATE_SLEEP if insufficient power
            break;
        case STATE_SLEEP:
            /*
             * TODO: go to sleep
             */
            state = STATE_WAKEUP;
            break;
        case STATE_GET_GPS:
            /*
             * TODO: wakeup gps, poll position
             */
            state = STATE_SEND_RADIO;
            break;
        case STATE_SEND_RADIO:
            /*
             * TODO: send position over radio
             */

            // TODO: queue transmission data if there is insufficient power to transmit?
            state = STATE_SLEEP;
            break;
    }
}

int main(void)
{
	/* Initialise ChibiOS */
	halInit();
	chSysInit();

	/* Main Loop */
    while (true) {
        jerboa_state_machine();
    }
}
