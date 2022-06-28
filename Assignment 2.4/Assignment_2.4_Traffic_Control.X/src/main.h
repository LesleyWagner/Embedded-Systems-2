/* 
 * File:   main.h
 * Author: Lesley Wagner
 *
 */

#ifndef MAIN_H
#define	MAIN_H

#include "switch.h"
#include "button.h"

/* ------------------------------------------------------------ */
/*						Definitions      		                */
/* ------------------------------------------------------------ */

#define DEBOUNCE_DELAY 160000 // 20 ms debounce time, 160000 clock ticks
#define BAUD 9600

/* ------------------------------------------------------------ */
/*						Function prototypes		                */
/* ------------------------------------------------------------ */

/* Global functions */

/**
 * Configures timer 2.
 */
void timer2_init();

/**
 * Initialize buttons
 */
void buttons_init();

/**
 * Initialize switches
 */
void switches_init();

/**
 * Enable change notification for switches.
 */
void enableCN();

/**
 * Check whether one of the buttons is pressed.
 * @return 1 if a button is pressed, 0 otherwise
 */
int checkBtns();

/**
 * Get the flipped switch.
 */
void getFlippedSwitch();

/**
 * Send message with changed push button or switch state.
 */
void sendMessage(char* btn_id, int id_length, int state);

/* Private functions */



#endif	/* MAIN_H */