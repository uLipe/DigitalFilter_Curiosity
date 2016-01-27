#include <xc.inc>

;//
;//          WWW.EMBARCADOS.COM.BR
;//  
;//  Digital Filter with Curiosity Board
;//
;//  @file   digitalfilter_2nd_ord.asm
;//  @brief  assembly otpmimized digital filter routine
;//              
;//
 
 
psect   barfunc,local,class=CODE,delta=2 ; PIC10/12/16


;
; Filter offsets:
;
;struct __iir
;{
;   //filter states array: 
;   int16_t inputState[3];
;   int16_t outputState[2];  
;   int16_t currentOutput;
;
;   //filter coefficients table
;   int16_t *pCoefTable_a[2];
;   int16_t *pCoefTable_b[3];
;
;}

    inputState	    equ  0
    outputState	    equ  6
    currentOutput   equ  10
    pCoefTable_a    equ  12
    pCoefTable_b    equ  16

bsrTmp:	 DS  1

    
    global _iirFilter_2nd_Ord ; extern of bar function goes in the C source file

    
;
;   @fn iirFilter_2nd_Ord
;   @brief main digital filter routine, optimzed with MATH ACC
;   @param none	
;   @return none
;

_iirFilter_2nd_Ord:
    ;
    ; push bsr
    ;
    movf  BSR, w
    movwf BANKMASK(bsrTmp)
    
    
    ;
    ; points to PID acc register page:
    ;
    movlb 0x0C
   
    
    ;
    ; Zero the acc:
    ;    
    movlw 0x00
    movwf PID1ACCU
    movwf PID1ACCHH
    movwf PID1ACCHL
    movwf PID1ACCLH
    movwf PID1ACCLL
    movlb 0x0B
        
    
    ;
    ; begin filter calculation:
    ;
    
    
    ;
    ; acc = x[n] * b[0]
    ;
    moviw [inputState + 1]FSR0
    movwf PID1K1H
    moviw [inputState]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_b +1]FSR0
    movwf PID1SETH
    moviw [pCoefTable_b]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INH
    clrf    PID1INL
    movlb   0x0C
    
wait_1:    
    btfsc   PID1CON, 6
    bra     wait_1
    movlb   0x0B
    
    
    ;
    ; acc += x[n - 1] * b[1]
    ;
    moviw [inputState + 3]FSR0
    movwf PID1K1H
    moviw [inputState + 2]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_b + 3]FSR0
    movwf PID1SETH
    moviw [pCoefTable_b + 2]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INH
    clrf    PID1INL
    movlb   0x0C
wait_2:    
    btfsc   PID1CON, 6
    bra     wait_2
    movlb   0x0B
    ;
    ; acc += x[n - 2] * b[2]
    ;
    
    moviw [inputState + 5]FSR0
    movwf PID1K1H
    moviw [inputState + 4]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_b + 5]FSR0
    movwf PID1SETH
    moviw [pCoefTable_b + 4]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INH
    clrf    PID1INL
    movlb   0x0C
wait_3:    
    btfsc   PID1CON, 6
    bra     wait_3
    movlb   0x0B
    
    ;
    ; acc += y[n-1] * a[0]
    ;
    moviw [outputState  +1]FSR0
    movwf PID1K1H
    moviw [outputState]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_a + 1]FSR0
    movwf PID1SETH
    moviw [pCoefTable_a]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INH
    clrf    PID1INL
    movlb   0x0C
wait_4:    
    btfsc   PID1CON, 6
    bra     wait_4

    ;
    ; acc += y[n-2] * b[0]
    ;
    moviw [outputState + 3]FSR0
    movwf PID1K1H
    moviw [outputState + 2]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_a + 3]FSR0
    movwf PID1SETH
    moviw [pCoefTable_a + 2]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INH
    clrf    PID1INL
    movlb   0x0C
wait_5:    
    btfsc   PID1CON, 6
    bra     wait_5
    movlb   0x0B
    
    
    ;
    ; Store the result on output (gather only the upper 16bits)    
    ;
    
    movf    PID1OUTHH,w
    movwi   [currentOutput +1]FSR0
    movf    PID1OUTHL,w
    movwi   [currentOutput]FSR0
   
    
    ;
    ; Update filter history:
    ;
    
    ;
    ; shift x input samples:
    ;
    moviw  [inputState + 2]FSR0
    movwi  [inputState + 4]FSR0 
    moviw  [inputState + 3]FSR0
    movwi  [inputState + 5]FSR0 

    moviw  [inputState]FSR0
    movwi  [inputState + 2]FSR0 
    moviw  [inputState + 1]FSR0
    movwi  [inputState + 3]FSR0 
    
    
    ;
    ; shift y output samples:
    ;
    moviw  [outputState]FSR0
    movwi  [outputState + 2]FSR0 
    moviw  [outputState + 1]FSR0
    movwi  [outputState + 3]FSR0 
    
    moviw  [currentOutput]FSR0
    movwi  [outputState]FSR0 
    moviw  [currentOutput + 1]FSR0
    movwi  [outputState + 1]FSR0 
    
    ;
    ; all done ;D
    ;
    
    ;
    ; restore w,fsr & bsr
    ;
    movf BANKMASK(bsrTmp), w
    movwf   BSR
 
    
    
    
    return

end    