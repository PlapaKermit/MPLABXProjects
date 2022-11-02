#include "liaisonUSB.h"
#include <xc.h>

//send a char to the PIC
void char_to_pic(unsigned char c) {
    while (PIR1bits.TXIF == 0) {
    }
    TXREG = c;
}

//send a char to the PC
unsigned char char_to_pc() {
    while (PIR1bits.RCIF == 0) {
    }
    return RCREG;
}
