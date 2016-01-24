/**
  MATHACC Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    mathacc.h

  @Summary
    This is the generated header file for the MATHACC driver using MPLAB� Code Configurator

  @Description
    This header file provides APIs for driver for MATHACC.
    Generation Information :
        Product Revision  :  MPLAB� Code Configurator - v2.25.2
        Device            :  PIC16F1619
        Driver Version    :  1.0
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

#ifndef _MATHACC_H
#define _MATHACC_H

/**
  Section: Included Files
 */

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

/**
 Section: Data Type Definitions
 */

/**
  MATHACC result structure

  @Summary
    Define result structure for math acc results

  @Description
    This structure is to collect results  for MATHACC mode operation and
    add & multiply operations of MATHACC module. The mentioned module
    have 36 bits result which is mapped into the structure.

 */
typedef struct {
    uint8_t byteLL;
    uint8_t byteLH;
    uint8_t byteHL;
    uint8_t byteHH;
    uint8_t byteU;
} MATHACCResult;

#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif

    /**
      Section: Interface Routines
     */

    /**
      @Summary
        Initializes the MATHACC module

      @Description
        This routine initializes the MATHACC module

      @Preconditions
        None.

      @Param
        None.

      @Returns
        None.

      @Example
        <code>
        MATHACCResult result1;
        uint32_t result2 = 0;

        MATHACC_Initialize();

        result1 = MATHACC_AdditionAndMultiplicationResultGet(0xff00,0xffff,0x00ff);
        if(true == MATHACC_HasOverflowOccured())
        {
            // overflow occured, returned value in 'result1' is not correct.
        }

        result2 = MATHACC_AdditionResultGet(0x00ff,0xffff);
        if(true == MATHACC_HasOverflowOccured())
        {
            // overflow occured, returned value in 'result2' is not correct.
        }

        result2 = MATHACC_MultiplicationResultGet(0xffff,0x00ff);
        if(true == MATHACC_HasOverflowOccured())
        {
            // overflow occured, returned value in 'result2' is not correct.
        }
        </code>
     */
    void MATHACC_Initialize(void);

    /**
      @Summary
        Does addition and multiplication operation on input arguments and return
        the result.

      @Description
        This function triggers the module to perform addition and multiplication
        operation on given input arguments, based on the formula, (a+b).C, and
        return the result.

      @Preconditions
        MATHACC_Initialize() API should be called before calling this API.

      @Param
        a - 16bit value for addition
        b - 16bit value for addition
        c - 16bit value for multiplication

      @Returns
        Returns the result of type 'MATHACCResult'

      @Example
        <code>
        Refer MATHACC_Initialize() example
        </code>
     */
    MATHACCResult MATHACC_AdditionAndMultiplicationResultGet(uint16_t a, uint16_t b, uint16_t c);

    /**
      @Summary
        Does addition operation on input arguments and return the result

      @Description
        This function triggers the module to perform addition operation on given
        input arguments, and return the result.

      @Preconditions
        MATHACC_Initialize() API should be called before calling this API.

      @Param
        a - first value for addition
        b - second value for addition

      @Returns
        Returns 32-bit value as the result

      @Example
        <code>
        Refer MATHACC_Initialize() example
        </code>
     */
    uint32_t MATHACC_AdditionResultGet(uint16_t a, uint16_t b);

    /**
      @Summary
        Does multiplication operation on input arguments and return the result

      @Description
        This function triggers the module to perform multiplication operation on
        given input arguments, and return the result.

      @Preconditions
        MATHACC_Initialize() API should be called before calling this API.

      @Param
        b - first value for multiplication
        c - second value for multiplication

      @Returns
        Returns 32-bit value as the result

      @Example
        <code>
        Refer MATHACC_Initialize() example
        </code>
     */
    uint32_t MATHACC_MultiplicationResultGet(uint16_t b, uint16_t c);

    /**
      @Summary
        Read the result

      @Description
        Read the result available in PIDOUT registers.

      @Preconditions
        None

      @Param
        None

      @Returns
        Return the result of type 'MATHACCResult'

      @Example
        <code>
        MATHACCResult result = MATHACC_ResultGet();
        </code>
     */
    MATHACCResult MATHACC_ResultGet(void);

    /**
      @Summary
        Clear the result

      @Description
        Clear the result by clearing PIDOUT registers.

      @Preconditions
        None

      @Param
        None

      @Returns
        None

      @Example
        <code>
        MATHACC_ClearResult();
        </code>
     */
    void MATHACC_ClearResult(void);

    /**
      @Summary
        Checks for overflow error

      @Description
        Checks for overflow error

      @Preconditions
        None

      @Param
        None

      @Returns
        true - in case of overflow error
        false - if no overflow error

      @Example
        <code>
        Refer MATHACC_Initialize() example
        </code>
     */
    bool MATHACC_HasOverflowOccured(void);

#ifdef __cplusplus  // Provide C++ Compatibility

}
#endif
#endif /*_MATHACC_H*/

