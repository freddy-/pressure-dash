#include <EEPROM.h>
#include "DisplayHelper.h"
#include <stdlib.h>
#include <string.h>

#define BUTTON 2

DisplayHelper display;

void setup() {
  display.init();
  display.drawLogo();
  display.printLabels();

  pinMode(A0, INPUT);
  pinMode(A1, INPUT);

  Serial.begin(9600);
}

void loop() {
  float val0 = analogRead(A0);
  float val1 = analogRead(A1);

  //TODO criar média de valores, ler 10x com um certo intervalo de tempo e tirar a media

  Serial.println(val0);
  Serial.println(val1);

  // 7BAR 984ADC 4.80441v
  // 0BAR  92ADC 0.45146v
  
  val0 = map(val0, 92, 984, 0, 700);
  val1 = map(val1, 92, 984, 0, 700);

  Serial.println(val0);
  Serial.println(val1);
  Serial.println("----");
  
  display.drawBar(1, val0);
  display.drawBar(121, val1);

  display.showValues(val0, val1);

  Serial.println();

  //delay(1000);
}
