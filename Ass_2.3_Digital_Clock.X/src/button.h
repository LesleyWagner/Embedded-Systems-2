/**
 * File: button.h
 * ---------------
 * Defines the interface for the button.
 *
 * The button encapsulates the behavior of a push button. 
 * It attempts to minimalise the difficulty of interacting with a push button.
 */

#ifndef _button_
#define _button_

/**
 * Type: button
 * ------------
 * Defines the concrete representation of
 * the button.  Even though everything is
 * exposed, the client should respect the
 * the privacy of the representation and initialize and otherwise interact with a
 * button using those functions defined in this file.
 */
typedef struct {
	unsigned int volatile *reg; // register that holds the value of the button
    int index; // bit in the register that holds the value of the button
    char btnId; // button id
	int btnState; // current reading from the pushbutton (private)
	int lastBtnState; // previous reading from the pushbutton (private)
	unsigned long lastDebounceTime; // last time the pushbutton was toggled (private)
	int debounceDelay; // delay period in ms during which the button state is not read after it is pressed (private)
} button;

/**
 * Function: buttonNew
 * Usage: button topBtn;
 *        buttonNew(&topBtn, 10);
 * -------------------
 * Constructs a button.
 *
 * @param reg - register that holds the value of the button
 * @param index - index in the register that holds the value of the button.
 * @param id - button id
 * @param delay - debounce delay
 */

void buttonNew(button* btn, unsigned int volatile *reg, int index, char id, int delay);

/**
 * Function: readBtn
 *           readBtn(&topBtn);
 * -----------------------
 * Reads a button and returns true if a button is pressed. 
 * This function takes into consideration the debounce action that is present in affordable push buttons.
 * So it will take multiple calls of this function for the button to be read.
 * @return whether the button was pressed
 */

int readBtn(button* btn);

#endif