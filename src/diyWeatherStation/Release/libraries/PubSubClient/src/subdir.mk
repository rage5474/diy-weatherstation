################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/rage/Arduino/libraries/PubSubClient/src/PubSubClient.cpp 

LINK_OBJ += \
./libraries/PubSubClient/src/PubSubClient.cpp.o 

CPP_DEPS += \
./libraries/PubSubClient/src/PubSubClient.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/PubSubClient/src/PubSubClient.cpp.o: /home/rage/Arduino/libraries/PubSubClient/src/PubSubClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-I/home/rage/dev/projects/arduino/eclipse-workspaces/diy-weatherstation/diyWeatherStation/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 '-DARDUINO_BOARD="ESP8266_NODEMCU"' -DESP8266  -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/variants/nodemcu" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266mDNS" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer/src" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src" -I"/home/rage/Arduino/libraries/Adafruit_Unified_Sensor" -I"/home/rage/Arduino/libraries/DHT_sensor_library" -I"/home/rage/Arduino/libraries/PubSubClient" -I"/home/rage/Arduino/libraries/PubSubClient/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


