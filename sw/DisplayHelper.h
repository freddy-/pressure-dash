#ifndef DisplayHelper_h
#define DisplayHelper_h

#include <Wire.h>
#include "SSD1306Ascii.h"
#include "SSD1306AsciiWire.h"

#define I2C_ADDRESS 0x3C // 3D pra simulação, 3C para placa
#define SHIFT_UP_RPM 2000
#define OIL_PRESSURE_LIMIT 80
#define GAS_PRESSURE_LIMIT 200

class DisplayHelper {
  public:
    DisplayHelper();
    void init();
    void drawLogo();
    void drawBar(byte startColumn, int value);
    void setInverted(bool mode);
    void showPressures(int val0, int val1);
    void showTemperature(float temp);
    void showPressuresAndTemperature(float temp, int val0, int val1);
    void printLabels();
    void clear();
    
  private :
    bool displayInverted;
    SSD1306AsciiWire ssd1306;
    String getPadded(int num);
    void printValue(byte col, byte row, int value, bool showLastDecimalValue);
    void printTemperatureSmall(byte col, byte row, int value);
    void handlePressuresAlarm(int val0, int val1);
    void DisplayHelper::fillBar(byte column, byte line, byte value);
};

#endif
