/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using MPLAB� Code Configurator

  @Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  MPLAB� Code Configurator - v2.25.2
        Device            :  PIC16F1619
        Version           :  1.01
    The generated drivers are tested against the following:
        Compiler          :  XC8 v1.34
        MPLAB             :  MPLAB X v2.35 or v3.00
 */

/*
Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 */

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set DAC1OUT aliases
#define DAC1OUT_TRIS               TRISA0
#define DAC1OUT_LAT                LATA0
#define DAC1OUT_PORT               RA0
#define DAC1OUT_ANS                ANSA0
#define DAC1OUT_SetHigh()    do { LATA0 = 1; } while(0)
#define DAC1OUT_SetLow()   do { LATA0 = 0; } while(0)
#define DAC1OUT_Toggle()   do { LATA0 = ~LATA0; } while(0)
#define DAC1OUT_GetValue()         RA0
#define DAC1OUT_SetDigitalInput()    do { TRISA0 = 1; } while(0)
#define DAC1OUT_SetDigitalOutput()   do { TRISA0 = 0; } while(0)

#define DAC1OUT_SetAnalogMode()   do { ANSA0 = 1; } while(0)
#define DAC1OUT_SetDigitalMode()   do { ANSA0 = 0; } while(0)
// get/set channel_AN1 aliases
#define channel_AN1_TRIS               TRISA1
#define channel_AN1_LAT                LATA1
#define channel_AN1_PORT               RA1
#define channel_AN1_ANS                ANSA1
#define channel_AN1_SetHigh()    do { LATA1 = 1; } while(0)
#define channel_AN1_SetLow()   do { LATA1 = 0; } while(0)
#define channel_AN1_Toggle()   do { LATA1 = ~LATA1; } while(0)
#define channel_AN1_GetValue()         RA1
#define channel_AN1_SetDigitalInput()    do { TRISA1 = 1; } while(0)
#define channel_AN1_SetDigitalOutput()   do { TRISA1 = 0; } while(0)

#define channel_AN1_SetAnalogMode()   do { ANSA1 = 1; } while(0)
#define channel_AN1_SetDigitalMode()   do { ANSA1 = 0; } while(0)
// get/set channel_AN4 aliases
#define channel_AN4_TRIS               TRISC0
#define channel_AN4_LAT                LATC0
#define channel_AN4_PORT               RC0
#define channel_AN4_ANS                ANSC0
#define channel_AN4_SetHigh()    do { LATC0 = 1; } while(0)
#define channel_AN4_SetLow()   do { LATC0 = 0; } while(0)
#define channel_AN4_Toggle()   do { LATC0 = ~LATC0; } while(0)
#define channel_AN4_GetValue()         RC0
#define channel_AN4_SetDigitalInput()    do { TRISC0 = 1; } while(0)
#define channel_AN4_SetDigitalOutput()   do { TRISC0 = 0; } while(0)

#define channel_AN4_SetAnalogMode()   do { ANSC0 = 1; } while(0)
#define channel_AN4_SetDigitalMode()   do { ANSC0 = 0; } while(0)

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    GPIO and peripheral I/O initialization
 * @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);

#endif // PIN_MANAGER_H
/**
 End of File
 */