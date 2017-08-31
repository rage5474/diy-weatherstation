################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_cache.c \
/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_check.c \
/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_gc.c \
/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_hydrogen.c \
/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_nucleus.c 

C_DEPS += \
./core/spiffs_cache.c.d \
./core/spiffs_check.c.d \
./core/spiffs_gc.c.d \
./core/spiffs_hydrogen.c.d \
./core/spiffs_nucleus.c.d 

AR_OBJ += \
./core/spiffs_cache.c.o \
./core/spiffs_check.c.o \
./core/spiffs_gc.c.o \
./core/spiffs_hydrogen.c.o \
./core/spiffs_nucleus.c.o 


# Each subdirectory must supply rules for building sources it contributes
core/spiffs_cache.c.o: /home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_cache.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-I/home/rage/dev/projects/arduino/eclipse-workspaces/diy-weatherstation/diyWeatherStation/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 '-DARDUINO_BOARD="ESP8266_NODEMCU"' -DESP8266  -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/variants/nodemcu" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266mDNS" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer/src" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src" -I"/home/rage/Arduino/libraries/Adafruit_Unified_Sensor" -I"/home/rage/Arduino/libraries/DHT_sensor_library" -I"/home/rage/Arduino/libraries/PubSubClient" -I"/home/rage/Arduino/libraries/PubSubClient/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/spiffs_check.c.o: /home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_check.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-I/home/rage/dev/projects/arduino/eclipse-workspaces/diy-weatherstation/diyWeatherStation/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 '-DARDUINO_BOARD="ESP8266_NODEMCU"' -DESP8266  -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/variants/nodemcu" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266mDNS" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer/src" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src" -I"/home/rage/Arduino/libraries/Adafruit_Unified_Sensor" -I"/home/rage/Arduino/libraries/DHT_sensor_library" -I"/home/rage/Arduino/libraries/PubSubClient" -I"/home/rage/Arduino/libraries/PubSubClient/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/spiffs_gc.c.o: /home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_gc.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-I/home/rage/dev/projects/arduino/eclipse-workspaces/diy-weatherstation/diyWeatherStation/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 '-DARDUINO_BOARD="ESP8266_NODEMCU"' -DESP8266  -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/variants/nodemcu" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266mDNS" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer/src" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src" -I"/home/rage/Arduino/libraries/Adafruit_Unified_Sensor" -I"/home/rage/Arduino/libraries/DHT_sensor_library" -I"/home/rage/Arduino/libraries/PubSubClient" -I"/home/rage/Arduino/libraries/PubSubClient/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/spiffs_hydrogen.c.o: /home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_hydrogen.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-I/home/rage/dev/projects/arduino/eclipse-workspaces/diy-weatherstation/diyWeatherStation/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 '-DARDUINO_BOARD="ESP8266_NODEMCU"' -DESP8266  -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/variants/nodemcu" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266mDNS" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer/src" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src" -I"/home/rage/Arduino/libraries/Adafruit_Unified_Sensor" -I"/home/rage/Arduino/libraries/DHT_sensor_library" -I"/home/rage/Arduino/libraries/PubSubClient" -I"/home/rage/Arduino/libraries/PubSubClient/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/spiffs_nucleus.c.o: /home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266/spiffs/spiffs_nucleus.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-I/home/rage/dev/tools/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-I/home/rage/dev/projects/arduino/eclipse-workspaces/diy-weatherstation/diyWeatherStation/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10802 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 '-DARDUINO_BOARD="ESP8266_NODEMCU"' -DESP8266  -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/variants/nodemcu" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266mDNS" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WebServer/src" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi" -I"/home/rage/dev/tools/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src" -I"/home/rage/Arduino/libraries/Adafruit_Unified_Sensor" -I"/home/rage/Arduino/libraries/DHT_sensor_library" -I"/home/rage/Arduino/libraries/PubSubClient" -I"/home/rage/Arduino/libraries/PubSubClient/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


