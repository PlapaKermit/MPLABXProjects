#include "clav.h"
#include <pic18f87k22.h>
#include <xc.h>
#include "LCD.h"

void high_priority interrupt INT_clav(){
    if(INTCONbits.INT0F){
        unsigned char result;
        
            result = get_val_clav();
            LCD_send_donnee (result);
            INTCONbits.INT0F = 0;
    }
}
