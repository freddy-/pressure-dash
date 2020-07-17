#include <EEPROM.h>
#include "DisplayHelper.h"
#include <stdlib.h>
#include <string.h>

#define BUTTON 2
#define OIL A1
#define GAS A2
#define ADDR_PAGE_COUNTER 0
#define NR_PAGES 3

DisplayHelper display;
byte pageCounter = 2;
bool pageChanged = false;

void setup() {
  display.init();
  display.drawLogo();

  analogReference(INTERNAL); // 1.1v

  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(BUTTON, INPUT_PULLUP);

  pageCounter = EEPROM.read(ADDR_PAGE_COUNTER);

  Serial.begin(9600);
}

void loop() {
  readButtonState();

  if (pageChanged) {
    display.clear();
  }

  switch (pageCounter) {
    case 0:
      display.showPressures(readPressure(OIL), readPressure(GAS));
      break;
      
    case 1:
      display.showTemperature(temp());
      break;

    case 2:
      display.showPressuresAndTemperature(temp(), readPressure(OIL), readPressure(GAS));
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

// https://create.arduino.cc/projecthub/Marcazzan_M/how-easy-is-it-to-use-a-thermistor-e39321
#define R 18000 // valor do resistor divisor de tensao em ohms, necessario mensurar com multimetro
#define B 3889.58 // valor beta do termistor

#define VCC 5.0 // alimentacao do divisor
#define VREF 1.1 // tensao referencia do ADC
#define RT_AT_25 2727.05 // resistencia do termistor a 25 graus
#define T_25_C_AT_KELVIN 298.15
#define ADC_SAMPLES 10

float temp() {
  float VRT = 0;
  for(byte c = 0; c < ADC_SAMPLES; c++) {
    VRT += analogRead(A0);
    delay(10);
  }
  VRT /= ADC_SAMPLES;
  
  VRT = (VREF / 1023.00) * VRT;
  float RT = VRT / ((VCC - VRT) / R); // resistencia do termistor

  float tmp = log(RT / RT_AT_25);
  tmp = (1 / ((tmp / B) + (1 / T_25_C_AT_KELVIN))); //Temperature from thermistor
  
  return tmp - 273.15;
}

int readPressure(byte port) {
  unsigned int adc = 0;
  for(byte c = 0; c < ADC_SAMPLES; c++) {
    adc += analogRead(port);
    delay(10);
  }
  adc /= ADC_SAMPLES;

  return map(adc, 68, 862, 0, 700);
}
