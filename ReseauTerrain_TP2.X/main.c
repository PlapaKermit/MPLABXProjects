/*
 * File:   main.c
 * Author: sduval
 *
 * 6 d�cembre 2020, 17:28
 */


#include <xc.h>
#include <stdint.h>
#include "main.h"
#include "spi.h"
#include "eep_spi.h"
#include "UART.h"
#include "I2C.h"
#include "afficheur.h"

void delai_ms(unsigned char val){
/* Utilisation de la fonction temporisation delay_ms définie dans « xc.h »
__delay_ms( val) ;
*/
    for (int j=0;j<val;j++) {
        __delay_ms(1);
    }
}

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

    goto_lico(0,0);
    draw_string("Hello World");
    I2C_Init();
    I2C_Write_Register(0xA0, 0x08, 0x00);
    //Mise a zero du ctu
    I2C_Write_Register(0xA0, 0x01, 0x00);
    I2C_Write_Register(0xA0, 0x02, 0x00);
    I2C_Write_Register(0xA0, 0x03, 0x00);

    I2C_Write_Register(0xA0,0x00,0x20); //AO for write and A1 for read

    while(1)
    {
        draw_char(I2C_Read(0xA1,0x00));
        delai_ms(100);
        goto_lico(0,0);
    }
}
