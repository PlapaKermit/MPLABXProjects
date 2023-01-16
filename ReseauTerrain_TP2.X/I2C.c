/*
 * File:   I2C.c
 * Author: delaf
 *
 * Created on 16 January 2023, 10:11
 */


#include <xc.h>
#include "main.h"

void I2C_Init(void)
{
    SSP1STAT = 0x00;
    SSP1CON1 = 0x00;
    SSP1CON1bits.SSPEN = 1; // Enables the serial port and configures the SDAx and SCLx pins as the serial port pins
    SSP1CON1bits.SSPM = 0x08; // 1000 = I2C Master mode
    SSP1CON2 = 0x00;
    SSP1ADD = 0x77; // Baud rate pour I2C à 100kHz
}
void I2C_Write_Register(int Address, int Register, int data){
    SSP1CON2bits.SEN = 1; // Envoi du bit de start
    while(SSP1CON2bits.SEN){}

    SSP1BUF = Address; // adresse du convertisseur dig/ana
    PIR1bits.SSP1IF = 0; // reset du flag
    while(PIR1bits.SSP1IF == 0){}
    while(SSP1CON2bits.ACKSTAT == 1){}; // tant que acquittement du convertisseur non reçu

    SSP1BUF = Register; // adresse du convertisseur dig/ana
    PIR1bits.SSP1IF = 0; // reset du flag
    while(PIR1bits.SSP1IF == 0){}
    while(SSP1CON2bits.ACKSTAT == 1){}; // tant que acquittement du convertisseur non reçu

    SSP1BUF = data; // Value du convertisseur dig/ana
    PIR1bits.SSP1IF = 0; // reset du flag
    while(PIR1bits.SSP1IF == 0){}
    while(SSP1CON2bits.ACKSTAT == 1){}; // tant que acquittement du convertisseur non reçu

    SSP1CON2bits.PEN = 1; // Envoi du bit de stop
    while(PIR1bits.SSP1IF == 0){}
    PIR1bits.SSP1IF = 0;
}
int I2C_Read (int Address){
    SSP1CON2bits.SEN = 1; // Envoi du bit de start
    while(SSP1CON2bits.SEN){}

    SSP1BUF = Address; // adresse du convertisseur dig/ana
    PIR1bits.SSP1IF = 0; // reset du flag
    while(PIR1bits.SSP1IF == 0){}
    while(SSP1CON2bits.ACKSTAT == 1){}; // tant que acquittement du convertisseur non reçu

    SSP1CON2bits.PEN = 1; // Envoi du bit de stop
    while(PIR1bits.SSP1IF == 0){}
    PIR1bits.SSP1IF = 0;
    
    return SSP1BUF;
}