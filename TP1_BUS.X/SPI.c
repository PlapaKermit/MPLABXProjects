#include "SPI.h"


void SPI_init(void) {

    SSP2STAT = 0x00;
    SSP2CON1 = 0x31;
    
    TRIS_MOSI = 0;
    
    TRIS_SCK = 0;
    
    TRISFbits.TRISF7 = 0;
    CS_EE = 1;
    PIR2bits.SSP2IF = 0;
    SSP2CON1bits.SSPEN = 1;
}