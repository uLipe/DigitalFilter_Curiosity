/*
 * File:   main.c
 * Author: felipeneves
 *
 * Created on January 14, 2016, 12:57 AM
 */


#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "mcc_generated_files/mcc.h"
#include "digitalfilter_2nd_ord.h"

//
// Debug ADC to DAC:
//
#define DEBUG 


//
// float to IQ15 conversion:
//
#define __IQ(x) (int16_t)(x * 32768.0f)
 

//
// constants:
//
#define LED_BLINK_RATE 100 //ms
#define LED_BIT_POS    5   //LED bit position in TRIS/LAT Register


//
// Data structures:
//
#define BUFF_SIZE 64 //ping pong buffer size


struct pingpong
{
    uint16_t pingpongBuffer[2][BUFF_SIZE];
    uint8_t  activeBuffer;
    uint8_t  activeBufferCurrentPosition;
};


typedef struct pingpong ppbuf_t;


//
//Static variables:
//

static ppbuf_t adcBuffer; //Adc samples collection buffer
static ppbuf_t dacBuffer; //Dac samples collection buffer

static bool shouldFilter = false; //signals if a new buffer is available to filter;
static bool shouldCopy   = false;

static iirflt *iirStructure = (iirflt *)0; //iir Filter descriptor 

const int16_t iirCoef_a[2] = {__IQ(-0.206f), __IQ(0.570f)};  //Filter a coef table
const int16_t iirCoef_b[3] = {__IQ(0.337f),__IQ(0.0067f),__IQ(0.337f),};//Filter b coef table 


//
// Timing stuff variables:
//
static uint8_t  timeQuanta = 0;
static uint16_t tickCounter = 0;
#define TIME_QUANTA 8


//
//Public Functions:
//

//
// Update tick:
//
void UpdateTick(void)
{
    timeQuanta++;
    if(timeQuanta > TIME_QUANTA)
    {
        timeQuanta = 0;
        tickCounter++;
    }    
}

//
// SignalProcessEngine()
//
void SignalProcessEngine(void)
{
    
    uint8_t dacResult;
    //
    // When enter on this point we should:
    //
    

    
    //Get new value arrived from ADC and convert it to Q15:
    adcBuffer.pingpongBuffer[adcBuffer.activeBuffer][adcBuffer.activeBufferCurrentPosition] =
            (ADC1_GetConversionResult() >> 1);
    
    //Store new value to DAC and converts to Q8:
    dacResult = (uint8_t)((32768 + dacBuffer.pingpongBuffer[dacBuffer.activeBuffer][dacBuffer.activeBufferCurrentPosition]) >> 8);
    DAC1_SetOutput(dacResult);
    
    //
    // update active buffer on ADC:
    //
    adcBuffer.activeBufferCurrentPosition++;
    if(adcBuffer.activeBufferCurrentPosition == BUFF_SIZE)
    {
        adcBuffer.activeBuffer ^= 0x01;
        adcBuffer.activeBufferCurrentPosition = 0;
        
        //
        // signals to application if a new block is ready to filter:
        //
        shouldFilter = true;
        //LATA &= ~(1 << LED_BIT_POS);
        
    }
    
    //
    // update active buffer on DAC:
    //
    dacBuffer.activeBufferCurrentPosition++;
    if(dacBuffer.activeBufferCurrentPosition == BUFF_SIZE)
    {
        dacBuffer.activeBuffer ^= 0x01;
        dacBuffer.activeBufferCurrentPosition = 0;
        
    }
    
  
}

//
// @fn main()
// @brief Main applicattion funcion, responsible to run filter engine 
//
void main(void) 
{ 
    uint16_t i = 0;
    uint16_t timeCurrent = 0;
    //int16_t  tmpVal = 0;
    
    //
    // Init the hardware:
    //
    SYSTEM_Initialize();
 
    //
    // SET RA5 as output
    //
    TRISA &= ~(1 << LED_BIT_POS);
    LATA  &= ~(1 << LED_BIT_POS);
    
    //
    // clear filter buffers:
    //
    memcpy(&adcBuffer, 0, sizeof(ppbuf_t));
    memcpy(&dacBuffer, 0, sizeof(ppbuf_t));
    
    //
    // Init our IIR filter structure:
    //
    iirStructure = iirInit(&iirCoef_a[0],&iirCoef_b[0]);
    
    
    //
    //Enable Interrupts:
    //
    INTERRUPT_PeripheralInterruptEnable();
    INTERRUPT_GlobalInterruptEnable();
    
    //
    //Calibrate the led blink timer;
    //
    timeCurrent = tickCounter;
    
    
    for(;;)
    {
        
        //
        // Check if we have a new block of samples to filter:
        //
        if(shouldFilter == true)
        {
            
            uint8_t inactiveBuffer =  (~adcBuffer.activeBuffer & 0x01);
            
            //
            // only executes one time at signaled for application:
            //
            shouldFilter = false;
            
            //
            // filter all the samples of inactive buffer:
            //

            for(i = 0; i < BUFF_SIZE; i++)
            {
                
    
                //
                // Filter the sample:
                //
                iirDoFilter(iirStructure, adcBuffer.pingpongBuffer[inactiveBuffer][i]);
    
                
                //tmpVal = adcBuffer.pingpongBuffer[inactiveBuffer][i];
                
                //
                // Copy filtered result to dac buffer:
                //
                inactiveBuffer = (~dacBuffer.activeBuffer & 0x01); 
                
                dacBuffer.pingpongBuffer[inactiveBuffer][i] = iirGetOutValue(iirStructure);
                
                //dacBuffer.pingpongBuffer[inactiveBuffer][i] = tmpVal;
                //
                //take the inactcive adc buffer:
                //
                inactiveBuffer = (~adcBuffer.activeBuffer & 0x01); 
                
                
                
            }
            
         
        }    
        
        //
        // Put other stuff here:
        //
        
        
        //
        // LED blink:
        //
        if(tickCounter - timeCurrent >= LED_BLINK_RATE)
        {
           timeCurrent = tickCounter;
           LATA ^= (1 << LED_BIT_POS);
        }    
        
    }    
   
}
