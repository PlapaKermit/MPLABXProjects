#include <xc.h>
#include "get_keyboard.h"
#include "LCD.h"
#include "fonction.h"
#include "UART.h"

extern unsigned char keyboard_value;
extern int keyboard_flag;

void UART_init(void)
{
    TXSTA2 = 0x20;
    RCSTA2 = 0x90;
    
    BAUDCON2 = 0x00;
    
    SPBRGH2 = 0;
    SPBRG2 = 17;
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

void keyboard_treatment(void)
{
    unsigned char data;
    if (keyboard_flag == 1)
    {
        get_keyboard();
        
        data = keyboard_value;
        
        if (data == 0x3F)
        {
            UART2_send(0x0D);
            UART2_send(0x0A);
            LCD_display();
        }
        else
        {
            UART2_send(data);
            UART_send_to_machine(data);
            LCD_display();   
        }
    }
}