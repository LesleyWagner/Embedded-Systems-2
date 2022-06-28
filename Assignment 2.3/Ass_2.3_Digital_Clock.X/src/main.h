/* 
 * File:   main.h
 * Author: Lesley Wagner
 *
 */

#ifndef MAIN_H
#define	MAIN_H

/* ------------------------------------------------------------ */
/*						Definitions      		                */
/* ------------------------------------------------------------ */

#define DEBOUNCE_DELAY 160000 // 20 ms debounce time, 160000 clock ticks
#define BAUD 9600

/**
 * Clock state
 */
typedef enum clock_states {
    set = 1,
    display = 0
} clockState;

/**
 * cursor position
 */
typedef enum cursor_positions {
    cur_hours = 0,
    cur_minutes = 1,
    cur_seconds = 2
} curPosition;

/* ------------------------------------------------------------ */
/*						Function prototypes		                */
/* ------------------------------------------------------------ */

/* Global functions */

/**
 * Configures timer 2.
 */
void timer2_init();

/**
 * Checks if button L, R, U and D are pressed and performs corresponding update on the set time.
 * Returns 1 if the time is updated, 0 otherwise.
 */
int configureTime();

/**
 * Initialize buttons
 */
void buttons_init();

/**
 * Send current time and status to laptop via UART.
 */
void sendStatus(char* time_string, int state);

/* Private functions */



#endif	/* MAIN_H */