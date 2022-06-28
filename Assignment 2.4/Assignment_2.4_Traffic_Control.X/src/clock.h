/**
 * File: clock.h
 * ---------------
 * Defines the interface for the clock.
 *
 * The clock holds the current time. Uses timer 2 as a time reference.
 */

#ifndef _clock_H
#define _clock_H

#include "time.h"

/**
 * Type: clock
 * ------------
 * Defines the concrete representation of
 * the clock.  Even though everything is
 * exposed, the client should respect the
 * the privacy of the representation and initialize and otherwise interact with a
 * clock using those functions defined in this file.
 */
typedef struct {
	time currentTime;
} clock;

/**
 * Function: setTime
 * -----------------------
 * Sets the current time of the clock to time 't'.
 * Only use this function when the clock is stopped.
 */
void setTime(clock *clk, time t);

/**
 * Function: updateTime
 * -----------------------
 * Passes the current time 1 second forwards.
 * Should be called every second.
 */
void updateTime(clock *clk);

#endif