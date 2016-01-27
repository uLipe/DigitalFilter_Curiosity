//
//          WWW.EMBARCADOS.COM.BR
//  
//  Digital Filter with Curiosity Board
//
//  @file   digitalfilter_2nd_ord.h
//  @brief  interface for using digital second order filter
//          engine with optimized MATH ACC.    
//
#ifndef DIGITALFILTER_2ND_ORD_H
#define	DIGITALFILTER_2ND_ORD_H

//
// standard includes:
//
#include <stdint.h>
#include <stdbool.h>



//
// Filter context structure
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

//
// @fn      iirInit()
// @brief   Init and return a filter context structure
// @param[1]  a_coeffs - pointer to a_n coefficients table
// @param[2]  b_coeffs - pointer to b_n coefficients table 
// @return    pointer to a filter context structure
//
iirflt* iirInit( const int16_t *a_coeffs, const int16_t *b_coeffs);


//
// @fn      iirDoFilter())
// @brief   Execute a second order digital filtering on the passed input
//          sample
// @param[1] f - pointer to used filter context structure
// @param[2] input - current input sample (referred as x[n])
// @return   none  
//
void iirDoFilter(iirflt *f, int16_t input);

//
// @fn      iirGetOutValue()
// @brief   Get the most recente output y[n] filtered 
// @param[1] f - pointer to filter context structure
// @return   the most recent filtered sample [y]  
//
int16_t iirGetOutValue(iirflt *f);


#endif	/* DIGITALFILTER_2ND_ORD_H */

