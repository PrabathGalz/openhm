/*
 * test_panstamp.cpp
 *
 * Created: 02.05.2013 17:48:05
 *  Author: c.cier@gmx.de
 */ 

#include "Arduino.h"
#include "regtable.h"
#include <panstamp.h>

void setup();
void loop();

/**
 * LED pin
 */
#define LEDPIN               8

/**
 * Binary output pins (Arduino pins)
 */
uint8_t binaryPin[] = {8, 14, 15, 16, 17, 18, 19, 7};

/**
 * swapStatusReceived
 *
 * Function automatically called by the panStamp API whenever a SWAP status
 * packet is received
 *
 * 'status'    SWAP status packet received
 */
 void swapStatusReceived(SWPACKET *status)
 {
   // Place here you code if you want the outputs to change
   // according to the value of any external register/endpoint
 }
 

void setup()
{
	 int i;

	 pinMode(LEDPIN, OUTPUT);
	 digitalWrite(LEDPIN, LOW);

	 Serial.begin(57600);           // set up Serial library at 57600 bps

	 Serial.println("PSS startup.");  // prints hello with ending line break
	 
	 // Configure output pins
	 for(i=0 ; i<sizeof(binaryPin) ; i++)
	 pinMode(binaryPin[i], OUTPUT);

	 // Init panStamp
	 panstamp.init();

	 // Set carrier frequency to 868 MHz
	 panstamp.cc1101.setCarrierFreq(CFREQ_868);
 
	 //byte password[] = {1,2,3,4,5,6,7,8,9,10,11,12};
	 //panstamp.setSmartPassword(password);

	 // Transmit product code
	 getRegister(REGI_PRODUCTCODE)->getData();

}

void loop()
{
}
