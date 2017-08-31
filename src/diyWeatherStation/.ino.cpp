#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2017-08-31 18:03:47

#include "Arduino.h"
#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266mDNS.h>
#include <DHT.h>
#include <PubSubClient.h>
void setup(void) ;
void setupLogging() ;
void infoln(String message) ;
void info(String message) ;
void setupOnBoardLED() ;
void setupDustSensor() ;
void setupDHTSensor() ;
void connectToWifi() ;
void publishCurrentSensorValues() ;
String getValuesFromSensors() ;
int filter(int m) ;
int getAdcValue() ;
float convertVoltage2Density(const float voltage) ;
float getDensity() ;
void loop() ;

#include "diyWeatherStation.ino"


#endif
