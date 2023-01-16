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
    SSP1ADD = 0x1A; // Baud rate pour I2C à 100kHz
}
