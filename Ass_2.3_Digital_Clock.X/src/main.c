/* ************************************************************************** */
/** main.c

  @Author
    Lesley Wagner

  @Description
    Implementation of a graphical digital clock.
 */
/* ************************************************************************** */

#include "config.h"
#include "pragma.h"
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>

#include "lcd.h"
#include "uart.h"
#include "button.h"
#include "clock.h"
#include "main.h"

button btn_R;
button btn_L;
button btn_U;
button btn_D;

clock clk;
time initTime;
char time_string[9];
clockState state;
curPosition cur_pos; // cursor position

int main() {
    buttons_init();
    LCD_Init();
    timer2_init();
    initTime.hours = 12;
    initTime.minutes = 0;
    initTime.seconds = 0;
    setTime(&clk, initTime);
    state = display;
    
    macro_enable_interrupts();
//    TRISA = 0xFF00; // led pins are configured as outputs   
//    LATA = 0x00; 
    LCD_WriteStringAtPos("12:00:00", 0, 0);
    LCD_WriteStringAtPos("d", 1, 0);
    
    T2CONbits.ON = 1; // start timer 2
    
    while (1) {       
        switch (state) {
            case (display):
                // switch state to set
                if (PORTFbits.RF3 == set) {
                    state = set;
                    T2CONbits.ON = 0; // stop timer 2
                    TMR2 = 0;
                    LCD_WriteStringAtPos("s", 1, 0);
                }
                break;
            case (set):
                // switch state to display
                if (PORTFbits.RF3 == display) {
                    state = display;
                    T2CONbits.ON = 1; // start timer 2
                    LCD_WriteStringAtPos("d", 1, 0);
                }
                else {
                    // display updated time if user changed the time
                    if (configureTime()) {
                        timeStr(&clk.currentTime, time_string);
                        LCD_WriteStringAtPos(time_string, 0, 0);
                    }
                }
                break;
        }
    }
    
    return 0;
}

/**
 * Interrupt handler for timer 1.
 * The function is called every second.
 */
void __ISR(_TIMER_2_VECTOR,IPL7SOFT) timer2_callback(void) {
    updateTime(&clk);
    timeStr(&clk.currentTime, time_string);
    LCD_WriteStringAtPos(time_string, 0, 0);
    
    IFS0bits.T2IF = 0; // clear T2 interrupt flag
}

/**
 * Configures timer 2.
 */
void timer2_init() {
    T2CONbits.ON = 0;    
    T2CONbits.TCS = 0; // clock source is internal
    T2CONbits.T32 = 0; // 16 bit mode is used
    T2CONbits.TCKPS = 0b111; // 256 clock divider, 156250 Hz frequency  
      
    TMR2 = 0;
    PR2 = 31250; // period equals 1 second
    
    IFS0bits.T2IF = 0; // clear interrupt flag  
    IEC0bits.T2IE = 1; //set the interrupt enable high
    IPC2bits.T2IP = 7; //make priority 7
}

void buttons_init() {
    TRISBbits.TRISB0 = 1; // button L is input
    TRISFbits.TRISF0 = 1; // button C is input
    TRISBbits.TRISB8 = 1; // button R is input
    TRISBbits.TRISB1 = 1; // button U is input
    TRISAbits.TRISA15 = 1; // button D is input
    TRISFbits.TRISF3 = 1;  // RF3 (SW0) configured as input
    
    ANSELBbits.ANSB0 = 0; // analog function for button L is disabled
    ANSELBbits.ANSB8 = 0; // analog function for button R is disabled
    ANSELBbits.ANSB1 = 0; // analog function for button U is disabled
    
    buttonNew(&btn_R, &PORTB, 8, 'R', DEBOUNCE_DELAY);
    buttonNew(&btn_L, &PORTB, 0, 'L', DEBOUNCE_DELAY);
    buttonNew(&btn_U, &PORTB, 1, 'U', DEBOUNCE_DELAY);
    buttonNew(&btn_D, &PORTA, 15, 'D', DEBOUNCE_DELAY);
}

int configureTime() {
    int time_updated = 0;
    if (readBtn(&btn_R)) {
        cur_pos = (cur_pos + 1) % 3;
    }
    if (readBtn(&btn_L)) {
        cur_pos = (cur_pos + 2) % 3;
    }
    if (readBtn(&btn_U)) {
        switch (cur_pos) {
            case (cur_hours):
                incrementHours(&clk.currentTime);
                break;
            case (cur_minutes):
                incrementMinutes(&clk.currentTime);
                break;
            case (cur_seconds):
                incrementSeconds(&clk.currentTime);
                break;
        }        
        time_updated = 1;
    }
    if (readBtn(&btn_D)) {
        switch (cur_pos) {
            case (cur_hours):
                decrementHours(&clk.currentTime);
                break;
            case (cur_minutes):
                decrementMinutes(&clk.currentTime);
                break;
            case (cur_seconds):
                decrementSeconds(&clk.currentTime);
                break;
        }        
        time_updated = 1;
    }
    return time_updated;
}