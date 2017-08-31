/** Copyright Raphael Geissler 2017 **/

#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>
#include <DHT.h>

/*** GENERAL CONSTANTS ***/
const unsigned int onboardLED = 2;

/*** WIFI CONSTANT ***/
const char* ssid = "GLAN";
const char* password = "(KrampfH0ch12)";


ESP8266WebServer server(80);

/*** DUST SENSOR CONSTANTS ***/
//drive the led of sensor - 13 means D7 on NodeECU
const int I_LED = 13;
//analog input
const int vout = 0;

//ug/mmm / mv
const float covRatio = 0.2;
//mv
const int noDustVoltage = 400;
const int sysVoltage = 3000;

/*** DHT11 CONSTANTS ***/
const int DHTPIN = 4; // D2 on esp8266
const int DHTTYPE = 11; // DHT11


DHT dht(DHTPIN, DHTTYPE);

void handleRoot()
{
  digitalWrite(onboardLED, LOW);
  String densityWith = String(getDensity());

  float temperatureRaw = dht.readTemperature();
  float humidityRaw = dht.readHumidity();
  float heatIndexRaw = dht.computeHeatIndex(temperatureRaw, humidityRaw, false);

  String temperature = String(temperatureRaw);
  String humidity = String(humidityRaw);
  String heatIndex = String(heatIndexRaw);

  String currentResult = String("{\"dust\":\"" + densityWith + "\"," + "\"temperature\":\"" + temperature + "\"," + "\"humidity\":\"" + humidity + "\","+ "\"heatIndex\":\"" + heatIndex + "\"}");
  server.send(200, "Content-Type: application/json", currentResult);
  digitalWrite(onboardLED, HIGH);
}

void handleNotFound()
{
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET)?"GET":"POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i=0; i<server.args(); i++)
  {
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
}

/*** DUST SENSOR METHODS ***/
void setupDustSensor()
{
  // Dust Sensor
  pinMode(I_LED, OUTPUT);

  //I_LED default closed
  digitalWrite(I_LED, LOW);
}

int filter(int m)
{
  static int flag_first = 0, _buff[10], sum;
  const int _buff_max = 10;
  int i;

  if(flag_first == 0)
  {
    flag_first = 1;

    for(i = 0, sum = 0; i < _buff_max; i++)
    {
      _buff[i] = m;
      sum += _buff[i];
    }
    return m;
  }
  else
  {
    sum -= _buff[0];
    for(i = 0; i < (_buff_max - 1); i++)
    {
      _buff[i] = _buff[i + 1];
    }
    _buff[9] = m;
    sum += _buff[9];

    i = sum / 10.0;
    return i;
  }
}

int getAdcValue()
{
  digitalWrite(I_LED, HIGH);
  delayMicroseconds(280);
  int adcvalue = analogRead(vout);
  digitalWrite(I_LED, LOW);
  return adcvalue;
}

float convertVoltage2Density(const float voltage)
{
  float density = 0.0;

  if(voltage >= noDustVoltage)
  {
    float newVoltage = voltage - noDustVoltage;
    density = newVoltage * covRatio;
  }

  return density;
}

float getDensity()
{
  int adcvalue = getAdcValue();
  int filteredAdcvalue = filter(adcvalue);
  float voltage = (sysVoltage / 1024.0) * filteredAdcvalue * 11;

  return convertVoltage2Density(voltage);
}


/*** GENERAL METHODS ***/
void setup(void)
{

  Serial.begin(9600);
  Serial.print("--- RaGe Dust Sensor starting ---\n");
  pinMode(onboardLED, OUTPUT);
  digitalWrite(onboardLED, HIGH);

  WiFi.begin(ssid, password);

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp8266"))
  {
    Serial.println("MDNS responder started");
  }

  server.on("/", handleRoot);

  server.onNotFound(handleNotFound);

  server.begin();
  Serial.println("HTTP server started");

  setupDustSensor();
  dht.begin();
}

void loop(void)
{
  server.handleClient();
}























