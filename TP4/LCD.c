#include <xc.h>
#include "LCD.h"
#include "fonction.h"
far unsigned char DISPLAY_FUNC@0x1A0000;
far unsigned char DISPLAY_WR_DATA@0x1A0002;

extern unsigned char keyboard_value;
extern int keyboard_flag;

void delai_ms(int tempo){
    int i;
    for(i = 0;i < tempo;i++)
    {
        __delay_ms(1);
    }
}
void LCD_init(void)
{
    __delay_ms(10);
    DISPLAY_FUNC=0x38; 
    __delay_ms(5);
    DISPLAY_FUNC=0x38;
    __delay_ms(1);
    DISPLAY_FUNC=0x38;
    __delay_ms(1);
    DISPLAY_FUNC=SET_FUNC_8BIT_2LINE_5x7;
    __delay_ms(1);
    DISPLAY_FUNC=SHIFT_CURSOR_RIGHT; 
    __delay_ms(1);
    DISPLAY_FUNC=DISPLAY_ON_CUR_ON_BLINKOFF;
    __delay_ms(1);
    DISPLAY_FUNC=ENTRY_MODE_SET_CI_DNS;
    __delay_ms(1);
    DISPLAY_FUNC=RETURN_HOME; 
    __delay_ms(2);
    DISPLAY_FUNC=DISPLAY_CLEAR; 
    __delay_ms(2);
}

void LCD_move_cursor_left(void)
{
    DISPLAY_FUNC = SHIFT_CURSOR_LEFT;
    while((DISPLAY_FUNC&0x80) == 0x80){}
    delai_ms(1);
}

void LCD_move_cursor_right(void)
{
    DISPLAY_FUNC = SHIFT_CURSOR_RIGHT;
    while((DISPLAY_FUNC&0x80) == 0x80){}
    delai_ms(1);
}

void LCD_write(unsigned char caract)
{
    DISPLAY_WR_DATA = caract;
    while((DISPLAY_FUNC&0x80) == 0x80) {}
    delai_ms(1);
}

void LCD_return_to_line (void)
{
    DISPLAY_FUNC = RETURN_TO_LINE;
    while((DISPLAY_FUNC&0x80) == 0x80) {}
    delai_ms(1);
}

void LCD_display(void)
{
    if(keyboard_value == 0x3E)
    {
        LCD_init();
        keyboard_flag = 0;
    }
    
    else if (keyboard_value == 0x3D)
    {
        LCD_move_cursor_right();
        keyboard_flag = 0;
    }
    
    else if (keyboard_value == 0x3C)
    {
        LCD_move_cursor_left();
        keyboard_flag = 0;
    }
    
    else if (keyboard_value == 0x3A)
    {
        LCD_write(0x2B);
        keyboard_flag = 0;
    }
    
    else if (keyboard_value == 0x3B)
    {
        LCD_write(0x2D);
        keyboard_flag = 0;
    }
    
    else if (keyboard_value == 0x3F)
    {
        LCD_return_to_line();
        keyboard_flag = 0;
    }
    else if (keyboard_value == 0x3C)
    {
        LCD_move_cursor_right();
        keyboard_flag = 0;
    }
    
    else
    {
        LCD_write(keyboard_value);
        keyboard_flag = 0;
    }
}
void LCD_settings(unsigned char val)
{
    unsigned char adress;
    
    PORTJbits.OE =1;
    adress = DISPLAY_FUNC;
    PORTJbits.OE = 0;
    
    LCD_write(val);
    __delay_ms(2);
    
    if ((adress > 0x0E) && (adress < 0x40))
    {
        DISPLAY_FUNC = 0xC0;
    }
}