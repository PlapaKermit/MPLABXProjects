#include <xc.h>
#include "UART.h"
#include "main.h"



void UART_init(void) //init UART
{
    TXSTA2 = 0x20;
    RCSTA2 = 0x90;
    
    BAUDCON2 = 0x00;
    
    SPBRGH2 = 0;
    SPBRG2 = 17;
    
    
    TXSTA1 = 0x20;
    RCSTA1 = 0x90;
    
    BAUDCON1 = 0x00;
    
    SPBRGH1 = 0;
    SPBRG1 = 17;
}


void UART1_send(unsigned char val)
{
    while(TX1IF == 0);
    TXREG1 = val;

}

void UART2_send(unsigned char val)
{
    while(TX1IF == 0);
    TXREG2 = val;

}

void UART_send_to_machine(unsigned char val)
{
    if (val != 0x00)
    {
        UART1_send(val);
    }
}

void UART_send_to_hyperterminal(unsigned char val)
{
    if (val != 0x00)
    {
        UART2_send(val);
    }
}

