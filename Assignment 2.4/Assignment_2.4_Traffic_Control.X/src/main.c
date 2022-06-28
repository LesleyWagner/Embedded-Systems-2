/* ************************************************************************** */
/** main.c

  @Author
    Lesley Wagner

  @Description
    Input controls for an intersection traffic control simulation.
 */
/* ************************************************************************** */

#include "config.h"
#include "pragma.h"
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <sys/attribs.h>

#include "uart.h"
#include "button.h"
#include "main.h"
#include "switch.h"

button btn_R;
button btn_L;
button btn_U; // left traffic light button 
button btn_C;
button btn_D; // right traffic light button

switchBtn sw0; // red traffic light detection sensor
switchBtn sw3; // first sensor on the right side of the road (closest to the traffic light)
switchBtn sw4; // second sensor on the right side of the road
switchBtn sw2; // first sensor on the left side of the road (closest to the traffic light)
switchBtn sw1; // second sensor on the left side of the road
button* changed_btn;
switchBtn* changed_switch;

int main() {
    buttons_init();
    switches_init();
    enableCN();
    UART_Init(BAUD);
    // timer2_init();
    
    macro_enable_interrupts();
    TRISA = 0xFF00; // led pins are configured as outputs   
    LATA = 0x00; 
    
    // T2CONbits.ON = 1; // start timer 2
    
    while (1) {
        // send message to laptop if a button is pressed
        if (checkBtns(changed_btn)) {
            sendMessage(changed_btn->btnId, changed_btn->id_length, 1);
        }
    }
    
    return 0;
}

/**
 * Interrupt handler for timer 1.
 * The function is called every second.
 */
void __ISR(_TIMER_2_VECTOR,IPL7SOFT) timer2_callback(void) {
    // sendStatus(time_string, state);
    
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
    
    ANSELBbits.ANSB0 = 0; // analog function for button L is disabled
    ANSELBbits.ANSB8 = 0; // analog function for button R is disabled
    ANSELBbits.ANSB1 = 0; // analog function for button U is disabled
    
    buttonNew(&btn_U, &PORTB, 1, "btn_TL_U", 8, DEBOUNCE_DELAY);
    buttonNew(&btn_D, &PORTA, 15, "btn_TL_D", 8, DEBOUNCE_DELAY);
}

void switches_init() {
    TRISFbits.TRISF3 = 1; // RF3 (SW0) configured as input
    TRISFbits.TRISF5 = 1; // RF5 (SW1) configured as input
    TRISFbits.TRISF4 = 1; // RF4 (SW2) configured as input 
    TRISDbits.TRISD15 = 1; // RD15 (SW3) configured as input
    TRISDbits.TRISD14 = 1; // RD14 (SW4) configured as input
    
    sw0.id = "sensor_TL_R";
    sw0.id_length = 11;
    sw0.state = PORTFbits.RF3;
    
    sw1.id = "sensor_RR_2";
    sw1.id_length = 11;
    sw1.state = PORTFbits.RF5;
    
    sw2.id = "sensor_RR_1";
    sw2.id_length = 11;
    sw2.state = PORTFbits.RF4;
    
    sw3.id = "sensor_RL_1";
    sw3.id_length = 11;
    sw3.state = PORTDbits.RD15;
    
    sw4.id = "sensor_RL_2";
    sw4.id_length = 11;
    sw4.state = PORTDbits.RD14;
}

void enableCN() {
    CNCONDbits.ON = 1; // turn on CN module for port D
    CNCONFbits.ON = 1; // turn on CN module for port F
   
    CNENDbits.CNIED14 = 1; // enable CN for register D14
    CNENDbits.CNIED15 = 1; // enable CN for register D15
    CNENFbits.CNIEF3 = 1; // enable CN for register F3
    CNENFbits.CNIEF4 = 1; // enable CN for register F4
    CNENFbits.CNIEF5 = 1; // enable CN for register F5
    // read corresponding port registers to clear mismatch condition 
    // on CN input pins
    PORTD;
    PORTF;
    
    IPC8bits.CNIP = 0b101; // configure CN interrupt priority
    IFS1bits.CNDIF = 0; // clear CND interrupt flag
    IFS1bits.CNFIF = 0; // clear CNF interrupt flag
    IEC1bits.CNDIE = 1; // enable CND interrupt
    IEC1bits.CNFIE = 1; // enable CNF interrupt
}

void sendMessage(char* btn_id, int id_length, int state) {
    // data packet has the form of [_id:{btn_label}s:{btn_status}_]
    char dataPacket[21];
    dataPacket[0] = '-';
    dataPacket[1] = 'i';
    dataPacket[2] = 'd';
    dataPacket[3] = ':';
    memcpy(dataPacket + 4, btn_id, id_length);
    dataPacket[id_length + 4] = '.';
    dataPacket[id_length + 5] = 's';
    dataPacket[id_length + 6] = ':';
    dataPacket[id_length + 7] = '0' + state;
    dataPacket[id_length + 8] = '-';
    dataPacket[id_length + 9] = 0;
    UART_PutString(dataPacket);
}

int checkBtns() {
    int btn_pressed = 0;
    if (readBtn(&btn_U)) {
        changed_btn = &btn_U;
        btn_pressed = 1;
    }
    else if (readBtn(&btn_D)) {
        changed_btn = &btn_D;
        btn_pressed = 1;
    }
    return btn_pressed;
}

void getFlippedSwitch() {
    if (PORTFbits.RF3 != sw0.state) {
        sw0.state = !sw0.state;
        changed_switch = &sw0;
    }
    else if (PORTFbits.RF5 != sw1.state) {
        sw1.state = !sw1.state;
        changed_switch = &sw1;
    }
    else if (PORTFbits.RF4 != sw2.state) {
        sw2.state = !sw2.state;
        changed_switch = &sw2;
    }
    else if (PORTDbits.RD15 != sw3.state) {
        sw3.state = !sw3.state;
        changed_switch = &sw3;
    }
    else if (PORTDbits.RD14 != sw4.state) {
        sw4.state = !sw4.state;
        changed_switch = &sw4;
    }
}


void __ISR(_CHANGE_NOTICE_VECTOR,IPL5AUTO) cn_handler(void) {
    // send status of changed register
    // compare PORTD, PORTF registers with previous state to determine the changed switch
    getFlippedSwitch(changed_switch);
    sendMessage(changed_switch->id, changed_switch->id_length, changed_switch->state);
    PORTD;
    PORTF;
    IFS1bits.CNDIF = 0; // clear CND interrupt flag
    IFS1bits.CNFIF = 0; // clear CNF interrupt flag
}

