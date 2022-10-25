//compileur : xc8
#include "fonction.h"
#include <xc.h>
#include "LCD.h"
#include "clav.h"
#include "CNA.h"
#include "liaisonUSB.h"

#define _XTAL_FREQ 11059200


/*void main(void) {
    Init();
    init_aff_lcd();
    acq();
    I2C_Init();
    while (1) {
        double value = ADC_read(0); // TP3
        DAC_write(value);
        double value2 = (value*1000*(5/255);
        writeLCD_number(value2);
        if (value > 255 * 0.7) {
            PORTGbits.RG0 = 1;
        } else {
            PORTGbits.RG0 = 0;
        }
        delai_ms(100);
        PIR1bits.ADIF = 0; // clear ADC interrupt flag
        return;
    }
}*/ //TP3
void main(){
    Init();
    init_aff_lcd();
    acq();
    while(1){
        aff_lcd(pc_to_pic()+48);
        delai_ms(100);
    }
}