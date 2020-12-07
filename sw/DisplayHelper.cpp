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

void DisplayHelper::showPressures(int oilPressure, int gasPressure) {
  handlePressuresAlarm(oilPressure, gasPressure);
  printLabels();
  drawBar(1, oilPressure);
  drawBar(121, gasPressure);
  ssd1306.setFont(lcdnums12x16);
  ssd1306.set2X();  
  printValue(23, 0, oilPressure, true);
  printValue(23, 4, gasPressure, true);
}

void DisplayHelper::showTemperature(float temperature) {
  String temp = getPadded(temperature * 10);

  ssd1306.setCursor(0, 0);
  ssd1306.setFont(font8x8);
  ssd1306.set2X();
  ssd1306.println("TMP OLEO");      
  ssd1306.setFont(lcdnums14x24);
  ssd1306.setCol(4);

  ssd1306.print(temp[0]); 
  ssd1306.print(temp[1]); 
  ssd1306.print(temp[2]); 

  uint8_t r = ssd1306.row();
  uint8_t c = ssd1306.col();

  byte dot = 0b1111000;
  ssd1306.setRow(r + 5);
  ssd1306.setCol(c + 2);
  ssd1306.ssd1306WriteRam(dot);
  ssd1306.setCol(c + 3);
  ssd1306.ssd1306WriteRam(dot);
  ssd1306.setCol(c + 4);
  ssd1306.ssd1306WriteRam(dot);
  ssd1306.setCol(c + 5);
  ssd1306.ssd1306WriteRam(dot);
  ssd1306.setCol(c + 7);
  
  ssd1306.setRow(r);

  ssd1306.print(temp[3]);
}

void DisplayHelper::showPressuresAndTemperature(float temp, int oilPressure, int gasPressure) {
  handlePressuresAlarm(oilPressure, gasPressure);
  ssd1306.setFont(lcdnums12x16);
  ssd1306.set2X();
  printValue(0, 0, oilPressure, false);
  printValue(73, 0, gasPressure, false);
  printTemperatureSmall(13, 4, temp * 10);
}

void DisplayHelper::printLabels() {
  ssd1306.set1X();
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
  float value = map(inputValue, 0, 999, 0, 63);
  byte fullBarNumber = value / 8;
  byte lineCounter = 7;

  // calcula quantas paginas terão 100% de preenchimento
  if (fullBarNumber > 0) {
    for (; lineCounter >= (8 - fullBarNumber); lineCounter--) {
      fillBar(startColumn, lineCounter, 255);      
    }
  }

  // calcula restante do preenchimento da ultima pagina
  byte val = 0;
  for (byte bitCounter = 8; bitCounter > (8 - (int)value % 8); bitCounter--) {
    val |= 1 << (bitCounter - 1);
  }  
  fillBar(startColumn, lineCounter, val);

  // apaga o restante acima
  for (; lineCounter--; ) {
    fillBar(startColumn, lineCounter, 0);
  }
}

void DisplayHelper::fillBar(byte column, byte line, byte value) {
  for (byte c = 0; c < 6; c++) {
    ssd1306.setCursor(column + c, line);
    ssd1306.ssd1306WriteRam(value);
  }
}

void DisplayHelper::printTemperatureSmall(byte col, byte row, int value) {
  String str = getPadded(value);
  ssd1306.setCursor(col, row);
  ssd1306.print(str[0]);
  ssd1306.print(str[1]);
  ssd1306.print(str[2]);

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
  
  ssd1306.print(str[3]);
}

void DisplayHelper::printValue(byte col, byte row, int value, bool showLastDecimalValue) {
  String str = getPadded(value);
  ssd1306.setCursor(col, row);
  ssd1306.print(str[1]);

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
  
  ssd1306.print(str[2]);

  if (showLastDecimalValue) {
    ssd1306.print(str[3]);
  }  
}

void DisplayHelper::handlePressuresAlarm(int oilPressure, int gasPressure) {
  if (oilPressure < OIL_PRESSURE_LIMIT || gasPressure < GAS_PRESSURE_LIMIT) {
    setInverted(true);
  } else {
    setInverted(false);
  }
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
  char buff[5];
  sprintf(buff, "%.4u\0", num);
  return String(buff);
}

void DisplayHelper::clear() {
  ssd1306.clear();
}
