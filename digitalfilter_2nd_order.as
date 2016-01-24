#include <xc.inc>

; When assembly code is placed in a psect, it can be manipulated as a
; whole by the linker and placed in memory.  
;
; In this example, barfunc is the program section (psect) name, 'local' means
; that the section will not be combined with other sections even if they have
; the same name.  class=CODE means the barfunc must go in the CODE container.
; PIC18's should have a delta (addressible unit size) of 1 (default) since they
; are byte addressible.  PIC10/12/16's have a delta of 2 since they are word
; addressible.  PIC18's should have a reloc (alignment) flag of 2 for any
; psect which contains executable code.  PIC10/12/16's can use the default
; reloc value of 1.  Use one of the psects below for the device you use:

	    extern _iirFilterCurrCtx
	    global _iirFilter_2nd_Ord ; extern of bar function goes in the C source file

	    
	    PSECT code ,local, class=CODE,delta=2, reloc=1 ; PIC10/12/16

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
	    
		inputState	equ  1
		outputState	equ  6
		currentOutput   equ  10
		pCoefTable_a    equ  12
		pCoefTable_b    equ  16
		
	    
_iirFilter_2nd_Ord:
    
    ;
    ; push w, fsr & bsr
    ;
    movwi FSR1++
    movf  FSR0H, w
    movwi FSR1++    
    movf  FSR0L, w
    movwi FSR1++
    movf  BSR, w
    movwi FSR1++

    
    
    ;
    ; points to PID acc register page:
    ;
    movlw 0x0b
    movwf BSR
   
    
    ;
    ; Zero the acc:
    ;    
    movlw 0x00
    movwf PID1OUTU
    movwf PID1OUTHH
    movwf PID1OUTHL
    movwf PID1OUTLH
    movwf PID1OUTLL
    
    
    ;
    ; Setup filter block access 
    ;
    movf    _iirFilterCurrCtx, w
    movwf   FSR0H
    movf    _iirFilterCurrCtx+1, w
    movwf   FSR0L
    
    
    ;
    ; begin filter calculation:
    ;
    
    
    ;
    ; acc = x[n] * b[0]
    ;
    moviw [inputState]FSR0
    movwf PID1K1H
    moviw [inputState + 1]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_b]FSR0
    movwf PID1SETH
    moviw [pCoefTable_b + 1]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INL
    clrf    PID1INH
wait_1:    
    btfsc   PID1CON, 6
    bra     wait_1
    
    
    
    ;
    ; acc += x[n - 1] * b[1]
    ;
    moviw [inputState + 2]FSR0
    movwf PID1K1H
    moviw [inputState + 3]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_b + 2]FSR0
    movwf PID1SETH
    moviw [pCoefTable_b + 3]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INL
    clrf    PID1INH
wait_2:    
    btfsc   PID1CON, 6
    bra     wait_2
    
    ;
    ; acc += x[n - 2] * b[2]
    ;
    
    moviw [inputState + 4]FSR0
    movwf PID1K1H
    moviw [inputState + 5]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_b + 4]FSR0
    movwf PID1SETH
    moviw [pCoefTable_b + 5]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INL
    clrf    PID1INH
wait_3:    
    btfsc   PID1CON, 6
    bra     wait_3
    
    
    ;
    ; acc += y[n-1] * a[0]
    ;
    moviw [outputState]FSR0
    movwf PID1K1H
    moviw [outputState + 1]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_a]FSR0
    movwf PID1SETH
    moviw [pCoefTable_a + 1]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INL
    clrf    PID1INH
wait_4:    
    btfsc   PID1CON, 6
    bra     wait_4

    ;
    ; acc += y[n-2] * b[0]
    ;
    moviw [outputState + 2]FSR0
    movwf PID1K1H
    moviw [outputState + 3]FSR0
    movwf PID1K1L
    
    
    moviw [pCoefTable_a + 2]FSR0
    movwf PID1SETH
    moviw [pCoefTable_a + 3]FSR0
    movwf PID1SETL
    
    ;
    ; multiply & acc:
    ;
    clrf    PID1INL
    clrf    PID1INH
wait_5:    
    btfsc   PID1CON, 6
    bra     wait_5

    
    ;
    ; Store the result on output (gather only the upper 16bits)    
    ;
    
    movf    PID1OUTHH,w
    movwi   [currentOutput]FSR0
    movf    PID1OUTHL,w
    movwi   [currentOutput + 1]FSR0
   
    
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
    ; shift y input samples:
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
    moviw --FSR1
    movwf   BSR
    moviw --FSR1
    movwf  FSR0L
    moviw --FSR1
    movwf  FSR0H
    moviw --FSR1
    
    
    
    return
end