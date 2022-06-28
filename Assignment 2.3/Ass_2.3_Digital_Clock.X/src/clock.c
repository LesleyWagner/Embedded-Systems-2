/**
 * File: clock.c
 * ---------------
 * Defines the functions for interaction with the clock object.
 *
 * The clock holds the current time.
 */

#include "clock.h"

void setTime(clock *clk, time t) {
    clk->currentTime = t;
}

void updateTime(clock *clk) {
    // Increment seconds.
    // If the seconds value is looped back to 0, increment minutes.
    // If the minutes value is looped back to 0, increment hours.
    if (incrementSeconds(&clk->currentTime)) {
        if (incrementMinutes(&clk->currentTime)) {
            incrementHours(&clk->currentTime);
        }
    }
}