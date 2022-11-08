/*
 * File:   timer.c
 * Author: delaf
 *
 * Created on 08 November 2022, 08:48
 */


#include <xc.h>

void init_timer(void) {
    T0CONbits.T08BIT = 0; // 16 bits
    T0CONbits.T0CS = 0; // internal clock
    T0CONbits.PSA = 0; // prescaler assigned
    T0CONbits.T0PS = 0b111; // 1:256 prescaler
    T0CONbits.T0SE = 0; // increment on low to high
    INTCONbits.TMR0IE = 1; // enable timer0 interrupt
    INTCONbits.TMR0IF = 0; // clear timer0 interrupt flag
    INTCONbits.GIE = 1; // enable global interrupts
}

void start_timer(void) {
    T0CONbits.TMR0ON = 1; // start timer0
}

void stop_timer(void) {
    T0CONbits.TMR0ON = 0; // stop timer0
}

int lecture_timer(void) {
    //read the value of the timer
    return TMR0L;
}

void reset_timer(void) {
    TMR0L = 0;
}