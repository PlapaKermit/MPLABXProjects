//voi comment ça marche
far unsigned char DISPLAY_FUNC@0x1A0000;
far unsigned char DISPLAY_WR_DATA@0x1A0002;
//Définitions des fonctions LCD
#define DISPLAY_CLEAR 0x01
#define RETURN_HOME 0x02
#define ENTRY_MODE_SET_CI_DNS 0x06 //Cursor increase, is not shifted
#define ENTRY_MODE_SET_CI_DS 0x07 //Cursor increase, shifted
#define DISPLAY_ON_CUR_ON_BLINK_ON 0x0F
#define DISPLAY_ON_CUR_ON_BLINKOFF 0x0E
#define SHIFT_DISPLAY_RIGHT 0x1C
#define SHIFT_DISPLAY_LEFT 0x18
#define SHIFT_CURSOR_RIGHT 0x14
#define SHIFT_CURSOR_LEFT 0x10
#define SET_FUNC_8BIT_2LINE_5x10 0x3C
#define SET_FUNC_8BIT_2LINE_5x7 0x38
#define _XTAL_FREQ 11059200
#define RETURN_TO_LINE 0xC0

void LCD_init (void);
void LCD_move_cursor_left (void);
void LCD_move_cursor_right (void);
void LCD_write (unsigned char caract);
void LCD_return_to_line (void);
void LCD_display (void);
void delai_ms(int tempo);
void LCD_settings(unsigned char val);