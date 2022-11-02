void Init (void);
void Eeprom_write(unsigned char addr, unsigned char data);
int Eeprom_read(unsigned char addr);
void I2C_Init();
void delai_ms(unsigned char val);
void interrupt_init();
