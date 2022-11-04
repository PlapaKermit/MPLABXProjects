#include <xc.h>
#include "interrupt.h"

extern int keyboard_flag;

void high_priority interrupt interruption(void)
{
    if (INTCONbits.INT0F == 1)
    {
        keyboard_flag = 1;
        INTCONbits.INT0F = 0;
    }
}
void INTERRUPT_init(void)
{
    INTCON=0x00;
    INTCONbits.PEIE_GIEL = 1;
    INTCONbits.GIE_GIEH = 1;
    INTCONbits.INT0E = 1;
}