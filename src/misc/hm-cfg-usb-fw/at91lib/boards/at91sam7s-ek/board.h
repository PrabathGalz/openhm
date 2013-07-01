/* ----------------------------------------------------------------------------
 *         ATMEL Microcontroller Software Support 
 * ----------------------------------------------------------------------------
 * Copyright (c) 2008, Atmel Corporation
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the disclaimer below.
 *
 * Atmel's name may not be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * DISCLAIMER: THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
 * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * ----------------------------------------------------------------------------
 */

//------------------------------------------------------------------------------
/// \unit
/// !Purpose
/// 
/// Definition of AT91SAM7S-EK characteristics, AT91SAM7S-dependant PIOs and
/// external components interfacing.
/// 
/// !Contents
/// This file provide a large number of definitions, which are of three
/// different types.
///
/// PIO definitions are prefixed with #PIN_# or #PINS_#. They are to be used
/// with the pio peripheral to configure the pins required by the application.
///
/// First, additional information about the platform is provided by several
/// constants:
///    - BOARD_NAME is a string containing the board name
///    - The chip family and board (at91sam7s and at91sam7sek) are also
///      provided.
///    - BOARD_MAINOSC and BOARD_MCK contains the standard frequency for the
///      main oscillator and the master clock.
///
/// Contants prefixed with #BOARD_USB_# give information about the USB device
/// peripheral that is provided in the chip.
///
/// Defines prefixed with #PIN_# contain only one pin (and thus can be safely
/// used to initialize a single Pin instance), whereas defines starting with
/// #PINS_# contains either a single Pin instance with multiple pins inside it,
/// or a list of several Pin instances; they must be used as Pin[] array
/// initializer values, otherwise they are not safe.
///
/// Finally, some information about the flash controller is given by definitions
/// prefixed with #BOARD_FLASH_#.
//------------------------------------------------------------------------------

#ifndef BOARD_H 
#define BOARD_H

//------------------------------------------------------------------------------
//         Headers
//------------------------------------------------------------------------------

#if defined(at91sam7s128)
    #include "at91sam7s128/AT91SAM7S128.h"
#else
    #error Board does not support the specified chip.
#endif

//------------------------------------------------------------------------------
//         Global Definitions
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Board
//------------------------------------------------------------------------------
/// String containing the name of the board.
#define BOARD_NAME      "HM-CFG-USB"
/// Board definition.
#define at91sam7sek
/// Family definition.
#define at91sam7s
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Clocks
//------------------------------------------------------------------------------
/// Frequency of the board main oscillator, in Hz.
#define BOARD_MAINOSC           18432000

/// Master clock frequency (when using board_lowlevel.c), in Hz.
#define BOARD_MCK               48000000
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// USB
//------------------------------------------------------------------------------
/// Indicates the chip has a UDP controller.
#define BOARD_USB_UDP

/// Indicates the D+ pull-up is externally controlled.
#define BOARD_USB_PULLUP_EXTERNAL

/// Number of endpoints in the USB controller.
#define BOARD_USB_NUMENDPOINTS                  4

/// Returns the maximum packet size of the given endpoint.
/// \param i  Endpoint number.
/// \return Maximum packet size in bytes of endpoint. 
#define BOARD_USB_ENDPOINTS_MAXPACKETSIZE(i)    ((i == 0) ? 8 : 64)

/// Returns the number of FIFO banks for the given endpoint.
/// \param i  Endpoint number.
/// \return Number of FIFO banks for the endpoint.
#define BOARD_USB_ENDPOINTS_BANKS(i)            (((i == 0) || (i == 3)) ? 1 : 2)

/// USB attributes configuration descriptor (bus or self powered, remote wakeup)
//#define BOARD_USB_BMATTRIBUTES                  USBConfigurationDescriptor_SELFPOWERED_NORWAKEUP
#define BOARD_USB_BMATTRIBUTES                  USBConfigurationDescriptor_BUSPOWERED_NORWAKEUP
//#define BOARD_USB_BMATTRIBUTES                  USBConfigurationDescriptor_SELFPOWERED_RWAKEUP
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Pins
//------------------------------------------------------------------------------
/// DBGU pins definition. Contains DRXD (PA9) and DTXD (PA10).
#define PINS_DBGU  {0x00000600, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT}
/*
/// LED #0 pin definition (PA0).
#define PIN_LED_DS1   {1 << 0, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_OUTPUT_1, PIO_DEFAULT}
/// LED #1 pin definition (PA1).
#define PIN_LED_DS2   {1 << 1, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_OUTPUT_1, PIO_DEFAULT}
/// LED #2 pin definition (PA2).
#define PIN_LED_DS3   {1 << 2, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_OUTPUT_1, PIO_DEFAULT}
/// LED #3 pin definition (PA3).
#define PIN_LED_DS4   {1 << 3, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_OUTPUT_1, PIO_DEFAULT}
/// List of the four LED pin definitions (PA0, PA1, PA2 & PA3)
#define PINS_LEDS   PIN_LED_DS1, PIN_LED_DS2, PIN_LED_DS3, PIN_LED_DS4
*/
/// LED #0 pin definition (PA24).
#define PIN_LED_DS1   {1 << 24, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_OUTPUT_1, PIO_DEFAULT}
#define PINS_LEDS   PIN_LED_DS1
/*
/// Push button #0 definition (PA19).
#define PIN_PUSHBUTTON_1    {1 << 19, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_INPUT, PIO_DEGLITCH | PIO_PULLUP}
/// List of all push button definitions (PA19, PA20, PA15 & PA14).
//#define PINS_PUSHBUTTONS    PIN_PUSHBUTTON_1
/// Push button #1 index.
#define PUSHBUTTON_BP1      0
*/

/// SPI MISO pin definition (PA12).
#define PIN_SPI_MISO   {1 << 12, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_PERIPH_A, PIO_PULLUP}
/// SPI MOSI pin definition (PA13).
#define PIN_SPI_MOSI   {1 << 13, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT}
/// SPI SPCK pin definition (PA14).
#define PIN_SPI_SPCK   {1 << 14, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT}
/// SPI pins definition. Contains MISO, MOSI & SPCK (PA12, PA13 & PA14).
#define PINS_SPI       PIN_SPI_MISO, PIN_SPI_MOSI, PIN_SPI_SPCK
/// SPI chip select 0 pin definition (PA11).
#define PIN_SPI_NPCS0  {1 << 11, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT}
/// SPI chip select 1
#define PIN_SPI_NPCS1  {1 << 31, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_PERIPH_A, PIO_DEFAULT}
/// SPI chip select 2
#define PIN_SPI_NPCS2  {1 << 10, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_PERIPH_B, PIO_DEFAULT}
/// SPI chip select 3
#define PIN_SPI_NPCS3  {1 <<  3, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_PERIPH_B, PIO_DEFAULT}

/// USB VBus monitoring pin definition (PA13).
//#define PIN_USB_VBUS    {1 << 13, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_INPUT, PIO_DEFAULT}
/// USB pull-up control pin definition (PA16).
#define PIN_USB_PULLUP  {1 << 16, AT91C_BASE_PIOA, AT91C_ID_PIOA, PIO_OUTPUT_0, PIO_DEFAULT}
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Flash
//------------------------------------------------------------------------------
/// Indicates chip has an EFC.
#define BOARD_FLASH_EFC
/// Address of the IAP function in ROM.
#define BOARD_FLASH_IAP_ADDRESS         0x300E08
//------------------------------------------------------------------------------

#endif //#ifndef BOARD_H

