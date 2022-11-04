#include "fonction.h"
#include <xc.h>
#define _XTAL_FREQ 11059200

void Init(void)
{
    TRISB = 0xFF;
    TRISJ = 0x00;
    
    TRISCbits.TRISC6 = 0;
    TRISCbits.TRISC7 = 0;
    
    TRISGbits.TRISG1 = 0;
    TRISGbits.TRISG0 = 1;
            
    INTCONbits.INT0F = 0;
    // Obligatoire :Bus externe
    MEMCON=0xA0; //Address de l'EEPROM
 
      // Obligatoire : Désactivation des fonctions analogiques
    ANCON0=0x00;
    ANCON1=0x00;
    ANCON2=0x00;

}
