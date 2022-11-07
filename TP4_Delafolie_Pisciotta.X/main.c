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
        //Screen
        if (keyboard_flag == 1)
        {
            keyboard_value = get_keyboard();
            TXREG2 = keyboard_value;
            LCD_display();
            keyboard_flag = 0;
        }
        if (RC2IF == 1)
        {
            //if data (Enter en ascii) = 0x0D
            if (RCREG2 == 0x0D ){
                DISPLAY_FUNC = RETURN_TO_LINE;
            }
            //if data (back space en ascii) = 0x08
            else if (RCREG2 == 0x08)
            {
                LCD_clear();
            }
            else
            {
                LCD_write(RCREG2);
            }
            RC2IF = 0;
        }
        /*//Printer
        if (keyboard_flag == 1)
        {
            keyboard_value = get_keyboard();
            TXREG1 = keyboard_value;
            LCD_display();
            keyboard_flag = 0;
        }
        if (RC1IF == 1)
        {
            //if data (Enter en ascii) = 0x0D
            if (RCREG1 == 0x0D ){
                DISPLAY_FUNC = RETURN_TO_LINE;
            }
                //if data (back space en ascii) = 0x08
            else if (RCREG1 == 0x08)
            {
                LCD_clear();
            }
            else
            {
                LCD_write(RCREG1);
            }
            RC1IF = 0;
        }*/
    }
}
