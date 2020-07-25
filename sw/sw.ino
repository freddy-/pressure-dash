#include <EEPROM.h>
#include "DisplayHelper.h"

#define BUTTON 2
#define TEMPERATURE A0
#define OIL A1
#define GAS A2
#define ADDR_PAGE_COUNTER 0
#define NR_PAGES 3
#define OIL_RESISTOR_DIVIDER 668
#define GAS_RESISTOR_DIVIDER 680
#define OIL_PRESSURE_ERROR 0
#define GAS_PRESSURE_ERROR 0
// https://create.arduino.cc/projecthub/Marcazzan_M/how-easy-is-it-to-use-a-thermistor-e39321
#define TEMP_RESISTOR_DIVIDER 17740 // valor do resistor divisor de tensao em ohms, necessario mensurar com multimetro
#define BETA_THERMISTOR 3889.58 // valor beta do termistor

#define VCC 5.0 // alimentacao do divisor
//#define VREF 0.996 // tensao referencia do ADC
#define VREF 1.1 // tensao referencia do ADC simulação
#define RT_AT_25 2727.05 // resistencia do termistor a 25 graus
#define T_25_C_AT_KELVIN 298.15
#define ADC_SAMPLES 25


DisplayHelper display;
byte pageCounter = 2;
bool pageChanged = false;

void setup() {
  display.init();
  display.drawLogo();

  analogReference(INTERNAL); // 1.1v

  pinMode(BUTTON, INPUT_PULLUP);

  pageCounter = EEPROM.read(ADDR_PAGE_COUNTER);
}

void loop() {
  readButtonState();

  if (pageChanged) {
    display.clear();
  }

  switch (pageCounter) {
    case 0:
      display.showPressures(readOilPressure(), readGasPressure());
      break;
      
    case 1:
      display.showTemperature(temp());
      break;

    case 2:
      display.showPressuresAndTemperature(temp(), readOilPressure(), readGasPressure());
      break;
  }
  
  //delay(200);
  savePageChange();
}

void readButtonState() {
  if (digitalRead(BUTTON) == LOW) {
    delay(100);
    pageCounter++;
    pageChanged = true;
    if (pageCounter >= NR_PAGES) {
      pageCounter = 0;
    }
    while (digitalRead(BUTTON) == LOW);
  }
}

void savePageChange() {
  if (pageChanged) {
    EEPROM.write(ADDR_PAGE_COUNTER, pageCounter);
  }
  pageChanged = false;
}

float temp() {
  float tmp = readResistance(TEMPERATURE, TEMP_RESISTOR_DIVIDER);
  tmp = log(tmp / RT_AT_25);
  tmp = (1 / ((tmp / BETA_THERMISTOR) + (1 / T_25_C_AT_KELVIN))); //Temperature from thermistor  
  return tmp - 273.15;
}

int readOilPressure() {
  return readPressure(OIL, OIL_RESISTOR_DIVIDER, OIL_PRESSURE_ERROR);
}

int readGasPressure() {
  return readPressure(GAS, GAS_RESISTOR_DIVIDER, GAS_PRESSURE_ERROR);
}

int readPressure(byte port, int knownResistance, byte error) {
  float res = readResistance(port, knownResistance);
  res = res - error;
  res = res * 100;
  res = clampPressureValue(res);
  return map(res, 1000, 15466, 0, 700);
}

float readResistance(byte port, int knownResistance) {
  float tmp = 0;
  for(byte c = 0; c < ADC_SAMPLES; c++) {
    tmp += analogRead(port);
    delay(10);
  }
  tmp /= ADC_SAMPLES;
  
  tmp = (VREF / 1023.00) * tmp;
  return tmp / ((VCC - tmp) / knownResistance);
}

int clampPressureValue(int pressure) {
  if (pressure > 15466) return 15466;
  if (pressure < 1000) return 1000;
  return pressure;
}