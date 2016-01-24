/* 
 * File:   digitalfilter_2nd_ord.h
 * Author: felipeneves
 *
 * Created on January 14, 2016, 1:47 AM
 */

#ifndef DIGITALFILTER_2ND_ORD_H
#define	DIGITALFILTER_2ND_ORD_H

//
// standard includes:
//
#include <stdint.h>
#include <stdbool.h>



//
// Filter context opaque strucure
//
struct __iir
{
   //filter states array: 
   int16_t inputState[3];
   int16_t outputState[2];  
   int16_t currentOutput;

   //filter coefficients table
   int16_t pCoefTable_a[2];
   int16_t pCoefTable_b[3];
   
};

//
// iir filter context structure
//
typedef struct __iir iirflt;
//
// public functions:
//
iirflt* iirInit( const int16_t *a_coeffs, const int16_t *b_coeffs);
void iirDoFilter(iirflt *f, int16_t input);
int16_t iirGetOutValue(iirflt *f);


#endif	/* DIGITALFILTER_2ND_ORD_H */

