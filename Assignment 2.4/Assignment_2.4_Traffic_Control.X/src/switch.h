/**
 * File: switch.h
 * ---------------
 * Defines the interface for the switch.
 *
 * The switchBtn encapsulates the behavior of a switch. 
 * It attempts to minimalise the difficulty of interacting with a switch.
 */

#ifndef _switch_
#define _switch_

/**
 * Type: switchBtn
 * ------------
 * Defines the concrete representation of
 * the switch.  Even though everything is
 * exposed, the client should respect the
 * the privacy of the representation and initialize and otherwise interact with a
 * switch using those functions defined in this file.
 */
typedef struct {
    char* id; // switch id
    int id_length; // switch id length
	int state; // position of the switch
} switchBtn;

#endif