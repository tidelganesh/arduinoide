PORT="/dev/ttyUSB*"
AVRDUDE_PROGRAMMER=stk500v2
MCU=atmega8
AVRDUDE=avrdude
TARGET=ATmega8BOOT
HIGHF=0xCA
LOWF=0xDF

# Programming support using avrdude. Settings and variables.
AVRDUDE_PORT=$PORT
AVRDUDE_WRITE_FLASH="-U flash:w:$TARGET.hex"
AVRDUDE_FLAGS=" -v -p $MCU -P $AVRDUDE_PORT -c $AVRDUDE_PROGRAMMER"
AVRDUDE_WRITE_FUSES="-U lfuse:w:$LOWF:m -U hfuse:w:$HIGHF:m"
# Program the device.  
$AVRDUDE $AVRDUDE_FLAGS $AVRDUDE_WRITE_FLASH 
$AVRDUDE $AVRDUDE_FLAGS $AVRDUDE_WRITE_FUSES