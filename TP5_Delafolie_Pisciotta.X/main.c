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
/*//partie 1 TP
//Dans timer.c mettre :"T0CONbits.T0CS = 0; // internal clock" ligne 13
    LATCbits.LATC2 = 1; //demarage du fan

    while (1) {
        int svent = PORTBbits.RB1; // lecture du capteur du fan

        while (svent == 0){svent = PORTBbits.RB1;}; //Wait passage a 1 , en att update de la valeur
        start_timer();
        svent = PORTBbits.RB1;
        while (svent == 1){svent = PORTBbits.RB1;}; //Wait passage a 0 , en att update de la valeur
        stop_timer();
        writeLCD_number(lecture_timer());
        reset_timer();
        
    }*/
/*//Parti 2
//Dans timer.c mettre :"T0CONbits.T0CS = 0; // internal clock" ligne 13
    LATCbits.LATC2 = 1; //demarage du fan
    while(1){
        delai_ms(1000);
        reset_timer();
        start_timer();
        delai_ms(1000); //wait 1s
        stop_timer();
        writeLCD_number(lecture_timer());
        delai_ms(10);

    }*/
}