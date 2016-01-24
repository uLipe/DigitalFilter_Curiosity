

/**
  MATHACC Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    mathacc.c

  @Summary
    This is the generated driver implementation file for the MATHACC driver using MPLAB� Code Configurator

  @Description
    This header file provides implementations for driver APIs for MATHACC.
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

/**
  Section: Included Files
 */

#include <xc.h>
#include "mathacc.h"

/**
  Section: MATHACC APIs
 */

void MATHACC_Initialize(void) {
    // set the PID module to the options selected in the User Interface
    // PID1EN enabled; PID1MODE 2's compl signed i/p, with acc; PID1BUSY ; 
    PID1CON = 0x83;
}

MATHACCResult MATHACC_AdditionAndMultiplicationResultGet(uint16_t a, uint16_t b, uint16_t c) {
    MATHACCResult result;
    PID1K1H = (uint8_t) ((c & 0xFF00) >> 8);
    PID1K1L = (uint8_t) (c & 0x00FF);
    PID1SETH = (uint8_t) ((b & 0xFF00) >> 8);
    PID1SETL = (uint8_t) (b & 0x00FF);
    PID1INH = (uint8_t) ((a & 0xFF00) >> 8);
    PID1INL = (uint8_t) (a & 0x00FF); // starts module operation

    while (PID1CONbits.PID1BUSY == 1); // wait for the module to complete 

    result.byteLL = PID1OUTLL;
    result.byteLH = PID1OUTLH;
    result.byteHL = PID1OUTHL;
    result.byteHH = PID1OUTHH;
    result.byteU = PID1OUTU;

    return result;
}

uint32_t MATHACC_AdditionResultGet(uint16_t a, uint16_t b) {
    uint32_t result = 0;
    PID1K1H = 0;
    PID1K1L = 1;
    PID1SETH = (uint8_t) ((b & 0xFF00) >> 8);
    PID1SETL = (uint8_t) (b & 0x00FF);
    PID1INH = (uint8_t) ((a & 0xFF00) >> 8);
    PID1INL = (uint8_t) (a & 0x00FF); // starts module operation

    while (PID1CONbits.PID1BUSY == 1); // wait for the module to complete

    result = PID1OUTLL;
    result = (result | ((uint32_t) PID1OUTLH << 8)) & 0x0000FFFF;
    result = (result | ((uint32_t) PID1OUTHL << 16)) & 0x00FFFFFF;
    result = (result | ((uint32_t) PID1OUTHH << 24)) & 0xFFFFFFFF;

    return result;
}

uint32_t MATHACC_MultiplicationResultGet(uint16_t b, uint16_t c) {
    uint32_t result = 0;

    PID1K1H = (uint8_t) ((c & 0xFF00) >> 8);
    PID1K1L = (uint8_t) (c & 0x00FF);
    PID1SETH = (uint8_t) ((b & 0xFF00) >> 8);
    PID1SETL = (uint8_t) (b & 0x00FF);
    PID1INH = 0;
    PID1INL = 0; // starts module operation

    while (PID1CONbits.PID1BUSY == 1); // wait for the module to complete

    result = PID1OUTLL;
    result = (result | ((uint32_t) PID1OUTLH << 8)) & 0x0000FFFF;
    result = (result | ((uint32_t) PID1OUTHL << 16)) & 0x00FFFFFF;
    result = (result | ((uint32_t) PID1OUTHH << 24)) & 0xFFFFFFFF;

    return result;
}

MATHACCResult MATHACC_ResultGet(void) {
    MATHACCResult data;

    data.byteLL = PID1OUTLL;
    data.byteLH = PID1OUTLH;
    data.byteHL = PID1OUTHL;
    data.byteHH = PID1OUTHH;
    data.byteU = PID1OUTU;

    return data;
}

void MATHACC_ClearResult(void) {
    PID1OUTLL = 0;
    PID1OUTLH = 0;
    PID1OUTHL = 0;
    PID1OUTHH = 0;
    PID1OUTU = 0;
}

bool MATHACC_HasOverflowOccured(void) {
    bool retVal = false;

    if (1 == PIR5bits.PID1EIF) {
        retVal = true;
        PIR5bits.PID1EIF = 0;
    }

    return retVal;
}
// end of file




