/** Copyright Raphael Geissler 2017 **/

#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266mDNS.h>
#include <DHT.h>
#include <PubSubClient.h>

/*** GENERAL CONSTANTS ***/
const unsigned int onboardLED = 2;

/*** WIFI CONSTANT ***/
const char* ssid = "...";
const char* password = "...";

WiFiClient espClient;
PubSubClient client(espClient);

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

void setup(void) {
	setupLogging();
	infoln("Weather station starting");

	setupOnBoardLED();
	setupDustSensor();
	setupDHTSensor();

	connectToWifi();

	infoln("Weather station started");
	publishCurrentSensorValues();
	infoln("Going to deep sleep for 10 minutes.");
	ESP.deepSleep(600e6); //600 seconds => 10 minutes
}

void setupLogging() {
	Serial.begin(115200);
	Serial.println();
}

void infoln(String message) {
	info(message);
	Serial.println();
}

void info(String message) {
	Serial.print("INFO: " + message);
}

void setupOnBoardLED() {
	pinMode(onboardLED, OUTPUT);
	digitalWrite(onboardLED, HIGH);
}

void setupDustSensor() {
	// Dust Sensor
	pinMode(I_LED, OUTPUT);

	//I_LED default closed
	digitalWrite(I_LED, LOW);
}

void setupDHTSensor() {
	dht.begin();
}

void connectToWifi() {
	info("Connecting to Wifi");
	WiFi.begin(ssid, password);

	while (WiFi.status() != WL_CONNECTED) {
		delay(500);
		Serial.print(".");
	}
	Serial.println();
	infoln("Connected to " + String(ssid));
	infoln("IP address: " + String(WiFi.localIP().toString()));

	if (MDNS.begin("esp8266")) {
		infoln("Multicast DNS responder started.");
	}
}

void publishCurrentSensorValues() {
	client.setServer("minibian", 1883);

	while (!client.connected()) {
		info("Attempting MQTT connection...");
		String clientId = "WeatherStation";
		if (client.connect(clientId.c_str())) {
			Serial.println("connected");
			String sensorValues = getValuesFromSensors();
			client.publish("example", sensorValues.c_str());
		} else {
			Serial.print("failed, rc=");
			Serial.print(client.state());
			Serial.println(" try again in 5 seconds");
			delay(5000);
		}
	}
}

String getValuesFromSensors() {
	digitalWrite(onboardLED, LOW);
	String densityWith = String(getDensity());

	float temperatureRaw = dht.readTemperature();
	float humidityRaw = dht.readHumidity();

	if(!isnan(temperatureRaw) && !isnan(humidityRaw))
	{
		float heatIndexRaw = dht.computeHeatIndex(temperatureRaw, humidityRaw,
			false);

		String temperature = String(temperatureRaw);
		String humidity = String(humidityRaw);
		String heatIndex = String(heatIndexRaw);

		String currentResult = densityWith + " " + " " + temperature + " "
				+ humidity + " " + heatIndex;
		digitalWrite(onboardLED, HIGH);
		return currentResult;
	}
	else
	{
		infoln("DHT sensor values invalid.");
		infoln("Waiting 2 seconds and try again.");
		delay(2000);
		return getValuesFromSensors();
	}

}

/*** DUST SENSOR METHODS ***/

int filter(int m) {
	static int flag_first = 0, _buff[10], sum;
	const int _buff_max = 10;
	int i;

	if (flag_first == 0) {
		flag_first = 1;

		for (i = 0, sum = 0; i < _buff_max; i++) {
			_buff[i] = m;
			sum += _buff[i];
		}
		return m;
	} else {
		sum -= _buff[0];
		for (i = 0; i < (_buff_max - 1); i++) {
			_buff[i] = _buff[i + 1];
		}
		_buff[9] = m;
		sum += _buff[9];

		i = sum / 10.0;
		return i;
	}
}

int getAdcValue() {
	digitalWrite(I_LED, HIGH);
	delayMicroseconds(280);
	int adcvalue = analogRead(vout);
	digitalWrite(I_LED, LOW);
	return adcvalue;
}

float convertVoltage2Density(const float voltage) {
	float density = 0.0;

	if (voltage >= noDustVoltage) {
		float newVoltage = voltage - noDustVoltage;
		density = newVoltage * covRatio;
	}

	return density;
}

float getDensity() {
	int adcvalue = getAdcValue();
	int filteredAdcvalue = filter(adcvalue);
	float voltage = (sysVoltage / 1024.0) * filteredAdcvalue * 11;

	return convertVoltage2Density(voltage);
}

void loop() {
}
