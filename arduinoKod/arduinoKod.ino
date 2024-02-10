#include <SoftwareSerial.h>
SoftwareSerial mySerial(2,3);

void setup() {
  Serial.begin(9600); // Serial communication with ESP8266
  mySerial.begin(9600); // Serial communication with ESP8266
}

void loop() {
  
  String IncomingString=""; boolean StringReady = false;
  while (mySerial.available()) {
  }
  IncomingString=mySerial. readString(); StringReady= true;
  if (StringReady) {
  Serial.println("Received String: " + IncomingString);
  }
}