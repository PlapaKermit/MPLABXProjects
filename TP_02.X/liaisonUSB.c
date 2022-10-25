#include "liaisonUSB.h"
#include <xc.h>

//envoi des toucher clavier PC vers le microcontroleur
unsigned char pc_to_pic(){
    RCSTA2bits.SPEN = 1;// activation du port de communication
    RCSTA2bits.RX9 = 1;// 9 bits de données
    RCSTA2bits.CREN = 1; // activation de la réception
    while(RCSTA2bits.OERR); // si erreur de communication, on la réinitialise

    return RCREG2; // retourne le caractère reçu
}