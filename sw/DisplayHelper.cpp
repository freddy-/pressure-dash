#include <Wire.h>
#include "SSD1306Ascii.h"
#include "SSD1306AsciiWire.h"
#include "DisplayHelper.h"
#include "vw_logo.h"

DisplayHelper::DisplayHelper() {
  displayInverted = false;
}

void DisplayHelper::init() {  
  Wire.begin();
  Wire.setClock(400000L);
  ssd1306.begin(&Adafruit128x64, I2C_ADDRESS);
  ssd1306.setContrast(255);

  ssd1306.ssd1306WriteCmd(SSD1306_SETPRECHARGE);
  ssd1306.ssd1306WriteCmd(0);

  ssd1306.ssd1306WriteCmd(SSD1306_SETVCOMDETECT);
  ssd1306.ssd1306WriteCmd(0);
}

void DisplayHelper::printLabels() {
  ssd1306.setFont(font8x8);
  ssd1306.setCursor(15, 0);
  ssd1306.print('O');
  ssd1306.setCursor(15, 1);
  ssd1306.print('L');
  ssd1306.setCursor(15, 2);
  ssd1306.print('E');
  ssd1306.setCursor(15, 3);
  ssd1306.print('O');
  
  ssd1306.setCursor(104, 4);
  ssd1306.print('C');
  ssd1306.setCursor(104, 5);
  ssd1306.print('O');
  ssd1306.setCursor(104, 6);
  ssd1306.print('M');
  ssd1306.setCursor(104, 7);
  ssd1306.print('B');
}

void DisplayHelper::drawBar(byte startColumn, int inputValue) {
  float value = map(inputValue, 0, 700, 0, 63);
  byte fullBarNumber = value / 8;
  byte lineCounter = 7;

  // calcula quantas paginas terão 100% de preenchimento
  if (fullBarNumber > 0) {
      for (; lineCounter >= (8 - fullBarNumber); lineCounter--) {
      ssd1306.setCursor(startColumn, lineCounter);
      ssd1306.ssd1306WriteRam(255);
      ssd1306.setCursor(startColumn + 1, lineCounter);
      ssd1306.ssd1306WriteRam(255);
      ssd1306.setCursor(startColumn + 2, lineCounter);
      ssd1306.ssd1306WriteRam(255);
      ssd1306.setCursor(startColumn + 3, lineCounter);
      ssd1306.ssd1306WriteRam(255);
      ssd1306.setCursor(startColumn + 4, lineCounter);
      ssd1306.ssd1306WriteRam(255);
      ssd1306.setCursor(startColumn + 5, lineCounter);
      ssd1306.ssd1306WriteRam(255);
    }
  }

  // calcula restante do preenchimento da ultima pagina
  byte val = 0;
  for (byte bitCounter = 8; bitCounter > (8 - (int)value % 8); bitCounter--) {
    val |= 1 << (bitCounter - 1);
  }
  
  ssd1306.setCursor(startColumn, lineCounter);
  ssd1306.ssd1306WriteRam(val);
  ssd1306.setCursor(startColumn + 1, lineCounter);
  ssd1306.ssd1306WriteRam(val);
  ssd1306.setCursor(startColumn + 2, lineCounter);
  ssd1306.ssd1306WriteRam(val);
  ssd1306.setCursor(startColumn + 3, lineCounter);
  ssd1306.ssd1306WriteRam(val);
  ssd1306.setCursor(startColumn + 4, lineCounter);
  ssd1306.ssd1306WriteRam(val);
  ssd1306.setCursor(startColumn + 5, lineCounter);
  ssd1306.ssd1306WriteRam(val);

  // apaga o restante acima
  for (; lineCounter--; ) {
    ssd1306.setCursor(startColumn, lineCounter);
    ssd1306.ssd1306WriteRam(0);
    ssd1306.setCursor(startColumn + 1, lineCounter);
    ssd1306.ssd1306WriteRam(0);
    ssd1306.setCursor(startColumn + 2, lineCounter);
    ssd1306.ssd1306WriteRam(0);
    ssd1306.setCursor(startColumn + 3, lineCounter);
    ssd1306.ssd1306WriteRam(0);
    ssd1306.setCursor(startColumn + 4, lineCounter);
    ssd1306.ssd1306WriteRam(0);
    ssd1306.setCursor(startColumn + 5, lineCounter);
    ssd1306.ssd1306WriteRam(0);
  }
}

void DisplayHelper::showValues(int val0, int val1) {
  ssd1306.setFont(lcdnums12x16);
  ssd1306.set2X();  
  printValue(23, 0, val0);
  printValue(23, 4, val1);
}

void DisplayHelper::printValue(byte col, byte row, int value) {
  String str = getPadded(value);
  ssd1306.setCursor(col, row);
  ssd1306.print(str[0]);

  uint8_t r = ssd1306.row();
  uint8_t c = ssd1306.col();

  byte dot = 0b1110000;
  ssd1306.setRow(r + 3);
  ssd1306.setCol(c + 2);
  ssd1306.ssd1306WriteRam(dot);
  ssd1306.setCol(c + 3);
  ssd1306.ssd1306WriteRam(dot);
  ssd1306.setCol(c + 4);
  ssd1306.ssd1306WriteRam(dot);
  ssd1306.setCol(c + 7);
  
  ssd1306.setRow(r);
  
  ssd1306.print(str[1]);  
  ssd1306.print(str[2]);
}

void DisplayHelper::drawLogo() {
  byte r = 0; // Start row - Modify as needed
  byte c = 32; // Start col - Modify as needed
  int a = 0; // Position in array - Don't change - an array larger than 256 will need to use "int = a"
  for (byte b = 0; b < 8; b++) {
    ssd1306.setCursor (c,(r+b)); 
    for (byte i = 0; i < 64; i++) {
      ssd1306.ssd1306WriteRam(pgm_read_byte(&vw_logo[a]));
      a++;
    }  
  }
  delay(1000);
  ssd1306.clear();
}

void DisplayHelper::setInverted(bool mode) {  
  if (mode != displayInverted) {
    displayInverted = mode;
    ssd1306.invertDisplay(displayInverted);
  }
}

String DisplayHelper::getPadded(int num) {
  char buff[4];
  sprintf(buff, "%.3u\0", num); // buff will be "012\0"
  return String(buff);
}
