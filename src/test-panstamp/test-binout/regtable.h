/*
 * regtable.h
 *
 * Created: 02.05.2013 18:18:02
 *  Author: c.cier@gmx.de
 */ 


#ifndef REGTABLE_H_
#define REGTABLE_H_

#include "Arduino.h"
#include "register.h"
#include "commonregs.h"

/**
 * Register indexes
 */
DEFINE_REGINDEX_START()
  REGI_BINOUTPUTS
DEFINE_REGINDEX_END()



#endif /* REGTABLE_H_ */