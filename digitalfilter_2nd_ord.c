#include <xc.h>
#include "digitalfilter_2nd_ord.h"





//
// global filter address (aka "gambeta" to avoid parameter passing in asm func)
//
//struct __iir *iirFilterCurrCtx;

//
// export assembly filter func:
//
extern void iirFilter_2nd_Ord(void);

//
// filter memory pool:
//
static iirflt filterMemPool[1]; //Only one, we are using a 8bit processor, right?

//
// internal module variables:
//
static bool outOfFilters = false;


//
// Public Apis implementation:
//

//
// iirInit()
//
iirflt* iirInit( const int16_t *a_coeffs, const int16_t *b_coeffs)
{
    iirflt *f = &filterMemPool[0];
    
    if(outOfFilters != true)
    {
        //
        // Available filter block 
        // initialize it:
        //
        
        f->currentOutput = 0;
        f->inputState[0] = 0;
        f->inputState[1] = 0;
        f->inputState[2] = 0;


        f->outputState[0] = 0;
        f->outputState[1] = 0;

        //
        // Receives filter coefficient table:
        //
        f->pCoefTable_a[0] = a_coeffs[0];
        f->pCoefTable_a[1] = a_coeffs[1];
        
        f->pCoefTable_b[0] = b_coeffs[0];
        f->pCoefTable_b[1] = b_coeffs[1];
        f->pCoefTable_b[2] = b_coeffs[2];
        
        
        //
        // Prevents accidental filter reallocation
        //
        outOfFilters = true;
    
        return(f);    
    }
    else
    {
        //
        // No filter available
        //        
        return(0);
    }    
}

//
//iirFilter())
//
void iirDoFilter(iirflt *f, int16_t input)
{
    uint16_t __fsrTmp = FSR0;
    
    if(f != (iirflt *)0)
    {
       //
       // In case of valid filter block
       // Make it visible to assembly code:
       // 
       FSR0 = f;
       f->inputState[0] = input;
       
       //
       // Run filter low level engine
       //
       iirFilter_2nd_Ord();     
    }    
 
    //
    // Restore FSR:
    //
    FSR0 = __fsrTmp;
    
}

//
// iirGetOutValue
//
int16_t iirGetOutValue(iirflt *f)
{
    if(f != (iirflt *)0)
    {
        return(f->currentOutput);
    }
    else
    {
        return(0);
    }    

}

