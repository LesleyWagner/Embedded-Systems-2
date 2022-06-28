/**
 * File: time.c
 * ---------------
 * Defines the functions for interaction with the time object.
 *
 * The time represents a time with hours, minutes and seconds.
 */

#include "time.h"
#include <stdio.h>

int incrementHours(time* t) {
    if (t->hours == 23) {
        t->hours = 0;
        return 1;
    }
    else {
        t->hours++;
        return 0;
    }
}

int decrementHours(time* t) {
    if (t->hours == 0) {
        t->hours = 23;
        return 1;
    }
    else {
        t->hours--;
        return 0;
    }
}

int incrementMinutes(time* t) {
    if (t->minutes == 59) {
        t->minutes = 0;
        return 1;
    }
    else {
        t->minutes++;
        return 0;
    }
}

int decrementMinutes(time* t) {
    if (t->minutes == 0) {
        t->minutes = 59;
        return 1;
    }
    else {
        t->minutes--;
        return 0;
    }
}

int incrementSeconds(time* t) {
    if (t->seconds == 59) {
        t->seconds = 0;
        return 1;
    }
    else {
        t->seconds++;
        return 0;
    }
}

int decrementSeconds(time* t) {
    if (t->seconds == 0) {
        t->seconds = 59;
        return 1;
    }
    else {
        t->seconds--;
        return 0;
    }
}

void timeStr(time* t, char* time_str) {
    sprintf(time_str, "%.2u:%.2u:%.2u", t->hours, t->minutes, t->seconds);
}