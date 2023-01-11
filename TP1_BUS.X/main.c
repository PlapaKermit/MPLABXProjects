#include "main.h"
#include "SPI.h"
#include "UART.h"

void initialisation_des_ports()
{
// D�sactivation du bus externe
    MEMCON=0xA0;    //ebdis=1 bus d�sactiv� (sauf en cas d'acc�s externe)

// D�sactivation des fonctions analogiques
    ANCON0=0x03; // ecran tactile en analogique X et Y
    ANCON1=0x08; // AN11 = entr�e analogique V_pot
    ANCON2=0x00;


// Valeur initiale des ports en sortie
    LED_R=0;
    LED_G=0;
    LED_B=0;

// D�fintion du sens des ports
    TRISAbits.TRISA2=0; //LED1
    TRISAbits.TRISA3=0; //LED2
    TRISAbits.TRISA4=0; //LED3
    TRISAbits.TRISA5=0; //LED4
    TRISCbits.TRISC2=0; //LED_R en sortie
    TRISCbits.TRISC1=0; //LED_G en sortie
    TRISGbits.TRISG0=0; //LED_B en sortie
    

// Mise en place des pull up
    INTCON2bits.RBPU=0; // Pull up PORTB activ�
    PADCFG1bits.REPU=1; // Pull up PORTE activ�

}


void main(void)
{
    initialisation_des_ports();
    initialisation_afficheur();
    clear_text();
    clear_graphics();
    UART_init();

    goto_lico(0,0);
    
    draw_string("E");
    for (int i =10; i<80;i++) {
    
        plot1(i,i);
        plot1(i+2,i+2);
        
    }
    
    int j=1;
    TXREG1 = "1";
    while(1)
    {
        while(RC1IF == 0);
        goto_lico(0,j);
        draw_char(RCREG1);
        TXREG1 = RCREG1;
        j++;
        RC1IF=0;

    }
}