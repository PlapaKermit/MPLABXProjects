//compileur : xc8
#include "fonction.h"
#include <xc.h>
#include "LCD.h"
#include "timer.h"

#define _XTAL_FREQ 11059200



void main() {
    Init();
    init_aff_lcd();
    acq();
    init_timer();
//partie 1 TP

    LATCbits.LATC2 = 1;

    while (1) {
        int svent = PORTBbits.RB1;

        while (svent == 0){svent = PORTBbits.RB1;};
        start_timer();
        svent = PORTBbits.RB1;
        while (svent == 1){svent = PORTBbits.RB1;};
        stop_timer();
        writeLCD_number(lecture_timer());
        reset_timer();
        
    }
}