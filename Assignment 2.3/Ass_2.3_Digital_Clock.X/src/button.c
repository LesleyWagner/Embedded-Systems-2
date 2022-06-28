#include "button.h"
#include <xc.h>
#include <sys/attribs.h>

void buttonNew(button* btn, unsigned int volatile *reg, int index, char id, int delay) {
	btn->reg = reg; 
    btn->index = index;
    btn->btnId = id;
    btn->debounceDelay = delay;
    btn->btnState = 0;
    btn->lastBtnState = 0;
    btn->lastDebounceTime = 0;
}

int readBtn(button* btn) {
	// read the state of the switch into a local variable:
	int reading = (*(btn->reg) & (1 << btn->index)) >> btn->index;

	// check to see if you just pressed the button
	// (i.e. the input went from LOW to HIGH), and you've waited long enough
	// since the last press to ignore any noise:

	// If the switch changed, due to noise or pressing:
	if (reading != btn->lastBtnState) {
		// reset debounce timer
        btn->lastDebounceTime = _CP0_GET_COUNT();
	}
    
    long int delay = _CP0_GET_COUNT() - btn->lastDebounceTime;
    if (delay < 0) {
        delay += 2e32;
    }

	if (delay > btn->debounceDelay) {
		// whatever the reading is at, it's been there for longer than the debounce
		// delay, so take it as the actual current state:

		// if the button state has changed:
		if (reading != btn->btnState) {
			btn->btnState = reading;

			if (btn->btnState == 1) {
				btn->lastBtnState = reading;
				return 1;
			}
		}
	}

	// save the reading. Next time through the loop, it'll be the lastButtonState:
	btn->lastBtnState = reading;

	return 0;
}