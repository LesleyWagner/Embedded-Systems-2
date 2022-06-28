/**
 * File: time.h
 * ---------------
 * Defines the interface for the time.
 *
 * The time represents a time with hours, minutes and seconds.
 */

#ifndef _time_H
#define _time_H

/**
 * Type: time
 * ------------
 * Defines the concrete representation of
 * the time.  Even though everything is
 * exposed, the client should respect the
 * the privacy of the representation and initialize and otherwise interact with a
 * time using those functions defined in this file.
 */
typedef struct {
	unsigned int hours;
    unsigned int minutes;
    unsigned int seconds;
} time;

/**
 * Function: incrementHours
 * -----------------------
 * Increments the hours of the time object.
 * The hours value is looped back to 0 when the value equals 24.
 * @return 1 if the hours value is looped, else 0;
 */
int incrementHours(time* t);

/**
 * Function: decrementHours
 * -----------------------
 * Decrements the hours of the time object.
 * The hours value is looped back to 23 when the value equals 0.
 * @return 1 if the hours value is looped, else 0;
 */
int decrementHours(time* t);

/**
 * Function: incrementMinutes
 * -----------------------
 * Increments the minutes of the time object.
 * The minutes value is looped back to 0 when the value equals 60.
 * @return 1 if the minutes value is looped, else 0;
 */
int incrementMinutes(time* t);

/**
 * Function: decrementMinutes
 * -----------------------
 * Decrements the minutes of the time object.
 * The minutes value is looped back to 59 when the value equals 0.
 * @return 1 if the minutes value is looped, else 0;
 */
int decrementMinutes(time* t);

/**
 * Function: incrementSeconds
 * -----------------------
 * Increments the seconds of the time object.
 * The seconds value is looped back to 0 when the value equals 60.
 * @return 1 if the seconds value is looped, else 0;
 */
int incrementSeconds(time* t);

/**
 * Function: decrementSeconds
 * -----------------------
 * Decrements the seconds of the time object.
 * The seconds value is looped back to 59 when the value equals 0.
 * @return 1 if the seconds value is looped, else 0;
 */
int decrementSeconds(time* t);

/**
 * Function: timeStr
 * -----------------------
 * Get string representation of the time.
 * time_str should be a char array of length 9.
 * The string representation is placed in time_str.
 */
void timeStr(time* t, char* time_str);

#endif