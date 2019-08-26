#!/bin/sh

cd Marlin

mkdir -p ../Build

ARDUINO_PATH=../Arduino

${ARDUINO_PATH}/arduino-builder						\
		-compile						\
		-tools		${ARDUINO_PATH}/tools-builder		\
		-tools		${ARDUINO_PATH}/hardware/tools		\
		-hardware	${ARDUINO_PATH}/hardware		\
		-hardware	..					\
		-libraries	..					\
		-fqbn		Sanguino:avr:sanguino:cpu=atmega1284p	\
		-build-path	../Build				\
				Marlin.ino

