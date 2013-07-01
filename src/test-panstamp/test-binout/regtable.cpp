/*
 * regtable.cpp
 *
 * Created: 02.05.2013 18:21:07
 *  Author: c.cier@gmx.de
 */ 

#include <EEPROM.h>
#include "product.h"
#include "panstamp.h"
#include "regtable.h"

extern uint8_t binaryPin[8];
const void setBinOutputs(byte rId, byte *states);

/**
 * Declaration of common callback functions
 */
DECLARE_COMMON_CALLBACKS()

/**
 * Definition of common registers
 */
DEFINE_COMMON_REGISTERS()

/*
 * Definition of custom registers
 */

// Binary output register
byte dtBinOutputs[1];       // 8 Binary output states
REGISTER regBinOutputs(dtBinOutputs, sizeof(dtBinOutputs), NULL, &setBinOutputs);

/**
 * Initialize table of registers
 */
DECLARE_REGISTERS_START()
  &regBinOutputs,
DECLARE_REGISTERS_END()

/**
 * Definition of common getter/setter callback functions
 */
DEFINE_COMMON_CALLBACKS()

/**
 * Definition of custom getter/setter callback functions
 */
 
/**
 * setBinOutputs
 *
 * Set binary outputs
 *
 * 'rId'     Register ID
 * 'states'  New output levels
 */
const void setBinOutputs(byte rId, byte *states)
{
  byte i;
  
  // Update register
  memcpy(dtBinOutputs, states, sizeof(dtBinOutputs));

  // Control pins
  for(i=0 ; i<sizeof(binaryPin) ; i++)
    digitalWrite(binaryPin[i], (dtBinOutputs[0] >> i) & 0x01);
}

