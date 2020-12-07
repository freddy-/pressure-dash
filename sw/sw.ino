#include <EEPROM.h>
#include "DisplayHelper.h"

#define BUTTON 2
#define TEMPERATURE A0
#define OIL A1
#define GAS A2
#define ADDR_PAGE_COUNTER 0
#define NR_PAGES 3
#define OIL_PRESSURE_ERROR 25
#define GAS_PRESSURE_ERROR 5

#define MAX_ADC 1023.0
#define PRESSURE_SENSOR_OFFSET 0.998
#define PRESSURE_SENSOR_V_MIN 1.0  /* Volts */
#define PRESSURE_SENSOR_V_MAX 5.0  /* Volts */
#define PRESSURE_SENSOR_P_MIN 0.0  /* bar */
#define PRESSURE_SENSOR_P_MAX 10.0 /* bar */
#define PRESSURE_SENSOR_KPV (PRESSURE_SENSOR_P_MAX - PRESSURE_SENSOR_P_MIN) / (PRESSURE_SENSOR_V_MAX - PRESSURE_SENSOR_V_MIN)


// https://create.arduino.cc/projecthub/Marcazzan_M/how-easy-is-it-to-use-a-thermistor-e39321
#define TEMP_RESISTOR_DIVIDER 17740 // valor do resistor divisor de tensao em ohms, necessario mensurar com multimetro
#define BETA_THERMISTOR 3889.58 // valor beta do termistor

#define VCC 5.0 // alimentacao do divisor
#define VREF 5.0 // tensao referencia do ADC
//#define VREF 1.1 // tensao referencia do ADC simulação
#define RT_AT_25 2727.05 // resistencia do termistor a 25 graus
#define T_25_C_AT_KELVIN 298.15
#define ADC_SAMPLES 10


DisplayHelper display;
byte pageCounter = 2;
bool pageChanged = false;

void setup() {
  display.init();
  display.drawLogo();

  //analogReference(INTERNAL); // 1.1v

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
      display.showTemperature(readTemperature());
      break;

    case 2:
      display.showPressuresAndTemperature(readTemperature(), readOilPressure(), readGasPressure());
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

float readTemperature() {
  float tmp = readResistance(TEMPERATURE, TEMP_RESISTOR_DIVIDER);
  tmp = log(tmp / RT_AT_25);
  tmp = (1 / ((tmp / BETA_THERMISTOR) + (1 / T_25_C_AT_KELVIN))); //Temperature from thermistor  
  return tmp - 273.15;
}

int readOilPressure() {
  return 0;
}

int readGasPressure() {
  return readPressure(GAS, PRESSURE_SENSOR_OFFSET);
}

int readPressure(byte port, float offset) {
  float voltage = (readAnalogMeanValue(port) * VCC) / MAX_ADC;
  return clampPressureValue(PRESSURE_SENSOR_KPV * ((float)voltage - offset) * 100);
}

float readResistance(byte port, int knownResistance) {
  float tmp = readAnalogMeanValue(port);  
  tmp = (VREF / 1023.00) * tmp;
  return tmp / ((VCC - tmp) / knownResistance);
}

float readAnalogMeanValue(byte port) {
  float tmp = 0;
  for(byte c = 0; c < ADC_SAMPLES; c++) {
    tmp += analogRead(port);
    delay(10);
  }
  return tmp / ADC_SAMPLES;
}

int clampPressureValue(int pressure) {
  if (pressure > 999) return 999;
  if (pressure < 0) return 0;
  return pressure;
}