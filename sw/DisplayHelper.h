#ifndef DisplayHelper_h
#define DisplayHelper_h

#include <Wire.h>
#include "SSD1306Ascii.h"
#include "SSD1306AsciiWire.h"

#define I2C_ADDRESS 0x3D
#define SHIFT_UP_RPM 2000

class DisplayHelper {
  public:
    DisplayHelper();
    void init();
    void drawLogo();
    void drawBar(byte startColumn, int value);
    void setInverted(bool mode);
    void showValues(int val0, int val1);
    void printLabels();
    
  private :
    bool displayInverted;
    SSD1306AsciiWire ssd1306;
    String getPadded(int num);
    void printValue(byte col, byte row, int value);
};

#endif
