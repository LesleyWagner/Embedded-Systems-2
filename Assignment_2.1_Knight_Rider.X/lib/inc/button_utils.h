/* ************************************************************************** */
/** button utils

  @Author 
    Lesley Wagner

  @Description
    Utility functions for interacting with push buttons L, C, R, U and D.
 */
/* ************************************************************************** */

#ifndef _BUTTON_UTILS_H    /* Guard against multiple inclusion */
#define _BUTTON_UTILS_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Constants                                                         */
/* ************************************************************************** */
/* ************************************************************************** */
#define debounceDelay 800000 // 20 ms debounce time, 800000 clock ticks

// *****************************************************************************
// *****************************************************************************
// Section: Data Types
// *****************************************************************************
// *****************************************************************************

/**
 * Buttons corresponds to the buttons on the Basys MX3 board.
 * L = 0, C = 1, R = 2, U = 3, D = 4
 */
typedef enum Buttons {
    btnL = 0, btnC = 1, btnR = 2, btnU = 3, btnD = 4
} Button;

// *****************************************************************************
// *****************************************************************************
// Section: Interface Functions
// *****************************************************************************
// *****************************************************************************

/*
 * Initialises the buttons 
 */
void buttons_init();

/*
 * Reads the value of a push button. Call buttons_init() before calling this function.
 * @param button - push button to be read. ( L = 0, C = 1, R = 2, U = 3, D = 4)
 * @returns 1 when the button is pressed, 0 when it is not pressed).
 */
unsigned char btn_pressed(Button btn);

/* *****************************************************************************
 End of File
 */

#endif
