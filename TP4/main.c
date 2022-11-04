//compileur : xc8
#include "fonction.h"
#include <xc.h>
#include "LCD.h"
#include "get_keyboard.h"
#include "interrupt.h"
#include "UART.h"

#define _XTAL_FREQ 11059200

unsigned char keyboard_value;
int keyboard_flag = 0;

void main(void) 
{
    Init();
    LCD_init();
    UART_init();
    INTERRUPT_init();
    
    while (1) 
    {
        if (keyboard_flag == 1)
        {
            keyboard_value = get_keyboard();
            TXREG2 = keyboard_value;
            LCD_display();
            keyboard_flag = 0;
        }
    }
}
