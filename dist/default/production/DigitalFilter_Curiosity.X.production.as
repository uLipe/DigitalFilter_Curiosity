opt subtitle "Microchip Technology Omniscient Code Generator v1.35 (Free mode) build 201507080246"

opt pagewidth 120

	opt lm

	processor	16F1619
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF0 equ 00h ;# 
# 70 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INDF1 equ 01h ;# 
# 89 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCL equ 02h ;# 
# 108 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS equ 03h ;# 
# 171 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L equ 04h ;# 
# 190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H equ 05h ;# 
# 212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L equ 06h ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H equ 07h ;# 
# 250 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR equ 08h ;# 
# 301 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG equ 09h ;# 
# 320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH equ 0Ah ;# 
# 339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTCON equ 0Bh ;# 
# 416 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTA equ 0Ch ;# 
# 465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTB equ 0Dh ;# 
# 503 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PORTC equ 0Eh ;# 
# 564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR1 equ 010h ;# 
# 625 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR2 equ 011h ;# 
# 681 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR3 equ 012h ;# 
# 730 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR4 equ 013h ;# 
# 791 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIR5 equ 014h ;# 
# 847 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR0 equ 015h ;# 
# 866 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1 equ 016h ;# 
# 872 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1L equ 016h ;# 
# 891 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR1H equ 017h ;# 
# 910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CON equ 018h ;# 
# 976 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GCON equ 019h ;# 
# 1045 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2TMR equ 01Ah ;# 
# 1050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR2 equ 01Ah ;# 
# 1098 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PR equ 01Bh ;# 
# 1103 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR2 equ 01Bh ;# 
# 1151 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CON equ 01Ch ;# 
# 1296 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2HLT equ 01Dh ;# 
# 1423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2CLKCON equ 01Eh ;# 
# 1502 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2RST equ 01Fh ;# 
# 1581 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISA equ 08Ch ;# 
# 1630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISB equ 08Dh ;# 
# 1668 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TRISC equ 08Eh ;# 
# 1729 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE1 equ 090h ;# 
# 1790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE2 equ 091h ;# 
# 1846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE3 equ 092h ;# 
# 1895 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE4 equ 093h ;# 
# 1956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PIE5 equ 094h ;# 
# 2012 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OPTION_REG equ 095h ;# 
# 2094 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCON equ 096h ;# 
# 2155 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCTUNE equ 098h ;# 
# 2212 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCCON equ 099h ;# 
# 2283 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
OSCSTAT equ 09Ah ;# 
# 2338 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRES equ 09Bh ;# 
# 2344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESL equ 09Bh ;# 
# 2363 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADRESH equ 09Ch ;# 
# 2382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON0 equ 09Dh ;# 
# 2461 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON1 equ 09Eh ;# 
# 2526 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ADCON2 equ 09Fh ;# 
# 2573 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATA equ 010Ch ;# 
# 2622 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATB equ 010Dh ;# 
# 2660 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
LATC equ 010Eh ;# 
# 2721 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON0 equ 0111h ;# 
# 2772 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM1CON1 equ 0112h ;# 
# 2843 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON0 equ 0113h ;# 
# 2894 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CM2CON1 equ 0114h ;# 
# 2965 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CMOUT equ 0115h ;# 
# 2990 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BORCON equ 0116h ;# 
# 3022 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FVRCON equ 0117h ;# 
# 3097 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON0 equ 0118h ;# 
# 3146 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
DAC1CON1 equ 0119h ;# 
# 3215 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ZCD1CON equ 011Ch ;# 
# 3260 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELA equ 018Ch ;# 
# 3306 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELB equ 018Dh ;# 
# 3344 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ANSELC equ 018Eh ;# 
# 3402 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADR equ 0191h ;# 
# 3408 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRL equ 0191h ;# 
# 3427 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMADRH equ 0192h ;# 
# 3446 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDAT equ 0193h ;# 
# 3452 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATL equ 0193h ;# 
# 3471 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMDATH equ 0194h ;# 
# 3490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON1 equ 0195h ;# 
# 3545 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PMCON2 equ 0196h ;# 
# 3564 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
VREGCON equ 0197h ;# 
# 3597 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1REG equ 0199h ;# 
# 3602 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG equ 0199h ;# 
# 3606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCREG1 equ 0199h ;# 
# 3650 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1REG equ 019Ah ;# 
# 3655 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG1 equ 019Ah ;# 
# 3659 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXREG equ 019Ah ;# 
# 3703 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRG equ 019Bh ;# 
# 3709 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGL equ 019Bh ;# 
# 3714 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG equ 019Bh ;# 
# 3718 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRG1 equ 019Bh ;# 
# 3722 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGL equ 019Bh ;# 
# 3778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SP1BRGH equ 019Ch ;# 
# 3783 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH equ 019Ch ;# 
# 3787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SPBRGH1 equ 019Ch ;# 
# 3831 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1STA equ 019Dh ;# 
# 3836 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA1 equ 019Dh ;# 
# 3840 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RCSTA equ 019Dh ;# 
# 4010 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TX1STA equ 019Eh ;# 
# 4015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA1 equ 019Eh ;# 
# 4019 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TXSTA equ 019Eh ;# 
# 4189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUD1CON equ 019Fh ;# 
# 4194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON1 equ 019Fh ;# 
# 4198 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL1 equ 019Fh ;# 
# 4202 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCON equ 019Fh ;# 
# 4206 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BAUDCTL equ 019Fh ;# 
# 4434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUA equ 020Ch ;# 
# 4491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUB equ 020Dh ;# 
# 4529 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WPUC equ 020Eh ;# 
# 4598 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1BUF equ 0211h ;# 
# 4603 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPBUF equ 0211h ;# 
# 4851 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1ADD equ 0212h ;# 
# 4856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPADD equ 0212h ;# 
# 5104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1MSK equ 0213h ;# 
# 5109 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPMSK equ 0213h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1STAT equ 0214h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSTAT equ 0214h ;# 
# 5478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON1 equ 0215h ;# 
# 5483 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON equ 0215h ;# 
# 5487 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON1 equ 0215h ;# 
# 5491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON equ 0215h ;# 
# 5747 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON2 equ 0216h ;# 
# 5752 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON2 equ 0216h ;# 
# 5868 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSP1CON3 equ 0217h ;# 
# 5873 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCON3 equ 0217h ;# 
# 5989 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONA equ 028Ch ;# 
# 6033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONB equ 028Dh ;# 
# 6071 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ODCONC equ 028Eh ;# 
# 6132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1 equ 0291h ;# 
# 6138 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1L equ 0291h ;# 
# 6157 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR1H equ 0292h ;# 
# 6176 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CON equ 0293h ;# 
# 6293 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1CAP equ 0294h ;# 
# 6360 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2 equ 0298h ;# 
# 6366 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2L equ 0298h ;# 
# 6385 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPR2H equ 0299h ;# 
# 6404 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CON equ 029Ah ;# 
# 6521 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2CAP equ 029Bh ;# 
# 6588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCPTMRS equ 029Eh ;# 
# 6675 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONA equ 030Ch ;# 
# 6719 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONB equ 030Dh ;# 
# 6757 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SLRCONC equ 030Eh ;# 
# 6818 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLA equ 038Ch ;# 
# 6867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLB equ 038Dh ;# 
# 6905 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INLVLC equ 038Eh ;# 
# 6966 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAP equ 0391h ;# 
# 7023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAN equ 0392h ;# 
# 7080 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCAF equ 0393h ;# 
# 7137 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBP equ 0394h ;# 
# 7175 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBN equ 0395h ;# 
# 7213 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCBF equ 0396h ;# 
# 7251 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCP equ 0397h ;# 
# 7312 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCN equ 0398h ;# 
# 7373 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
IOCCF equ 0399h ;# 
# 7434 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
HIDRVC equ 040Eh ;# 
# 7460 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4TMR equ 0413h ;# 
# 7465 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR4 equ 0413h ;# 
# 7513 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PR equ 0414h ;# 
# 7518 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR4 equ 0414h ;# 
# 7566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CON equ 0415h ;# 
# 7711 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4HLT equ 0416h ;# 
# 7838 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4CLKCON equ 0417h ;# 
# 7917 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4RST equ 0418h ;# 
# 7996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6TMR equ 041Ah ;# 
# 8001 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR6 equ 041Ah ;# 
# 8049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PR equ 041Bh ;# 
# 8054 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PR6 equ 041Bh ;# 
# 8102 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CON equ 041Ch ;# 
# 8247 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6HLT equ 041Dh ;# 
# 8374 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6CLKCON equ 041Eh ;# 
# 8453 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6RST equ 041Fh ;# 
# 8532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3L equ 0493h ;# 
# 8551 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR3H equ 0494h ;# 
# 8570 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CON equ 0495h ;# 
# 8636 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GCON equ 0496h ;# 
# 8705 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5L equ 049Ah ;# 
# 8724 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TMR5H equ 049Bh ;# 
# 8743 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CON equ 049Ch ;# 
# 8809 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GCON equ 049Dh ;# 
# 8878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SET equ 058Ch ;# 
# 8884 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETL equ 058Ch ;# 
# 8995 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1SETH equ 058Dh ;# 
# 9106 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1IN equ 058Eh ;# 
# 9112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INL equ 058Eh ;# 
# 9223 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1INH equ 058Fh ;# 
# 9334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1 equ 0590h ;# 
# 9340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1L equ 0590h ;# 
# 9451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K1H equ 0591h ;# 
# 9562 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2 equ 0592h ;# 
# 9568 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2L equ 0592h ;# 
# 9679 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K2H equ 0593h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3 equ 0594h ;# 
# 9796 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3L equ 0594h ;# 
# 9907 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1K3H equ 0595h ;# 
# 10017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUT equ 0596h ;# 
# 10023 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLL equ 0596h ;# 
# 10134 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTLH equ 0597h ;# 
# 10245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHL equ 0598h ;# 
# 10356 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTHH equ 0599h ;# 
# 10467 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1OUTU equ 059Ah ;# 
# 10532 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1 equ 059Bh ;# 
# 10538 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1L equ 059Bh ;# 
# 10649 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1H equ 059Ch ;# 
# 10760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z1U equ 059Dh ;# 
# 10789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2 equ 060Ch ;# 
# 10795 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2L equ 060Ch ;# 
# 10906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2H equ 060Dh ;# 
# 11017 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1Z2U equ 060Eh ;# 
# 11043 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACC equ 060Fh ;# 
# 11049 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLL equ 060Fh ;# 
# 11160 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCLH equ 0610h ;# 
# 11271 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHL equ 0611h ;# 
# 11382 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCHH equ 0612h ;# 
# 11493 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1ACCU equ 0613h ;# 
# 11544 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PID1CON equ 0614h ;# 
# 11637 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCL equ 0617h ;# 
# 11687 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3DCH equ 0618h ;# 
# 11806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM3CON equ 0619h ;# 
# 11861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCL equ 061Ah ;# 
# 11911 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4DCH equ 061Bh ;# 
# 12030 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PWM4CON equ 061Ch ;# 
# 12085 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBR equ 0691h ;# 
# 12188 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1DBF equ 0692h ;# 
# 12291 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS0 equ 0693h ;# 
# 12410 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1AS1 equ 0694h ;# 
# 12499 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1OCON0 equ 0695h ;# 
# 12610 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON0 equ 0696h ;# 
# 12710 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CON1 equ 0697h ;# 
# 12787 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1CLKCON equ 0699h ;# 
# 12814 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWG1ISM equ 069Ah ;# 
# 12893 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON0 equ 0711h ;# 
# 12967 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTCON1 equ 0712h ;# 
# 13060 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSL equ 0713h ;# 
# 13187 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTPSH equ 0714h ;# 
# 13314 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WDTTMR equ 0715h ;# 
# 13401 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADR equ 0718h ;# 
# 13407 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRL equ 0718h ;# 
# 13534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANLADRH equ 0719h ;# 
# 13661 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADR equ 071Ah ;# 
# 13667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRL equ 071Ah ;# 
# 13794 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANHADRH equ 071Bh ;# 
# 13921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANCON0 equ 071Ch ;# 
# 14033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SCANTRIG equ 071Dh ;# 
# 14112 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDAT equ 0791h ;# 
# 14118 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATL equ 0791h ;# 
# 14245 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCDATH equ 0792h ;# 
# 14372 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACC equ 0793h ;# 
# 14378 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCL equ 0793h ;# 
# 14505 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCACCH equ 0794h ;# 
# 14632 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFT equ 0795h ;# 
# 14638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTL equ 0795h ;# 
# 14765 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCSHIFTH equ 0796h ;# 
# 14892 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXOR equ 0797h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORL equ 0797h ;# 
# 14999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCXORH equ 0798h ;# 
# 15110 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON0 equ 0799h ;# 
# 15194 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CRCCON1 equ 079Ah ;# 
# 15333 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RES equ 080Ch ;# 
# 15339 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESL equ 080Ch ;# 
# 15450 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1RESH equ 080Dh ;# 
# 15489 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISS equ 080Eh ;# 
# 15495 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSL equ 080Eh ;# 
# 15606 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1MISSH equ 080Fh ;# 
# 15717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PER equ 0810h ;# 
# 15723 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERL equ 0810h ;# 
# 15834 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PERH equ 0811h ;# 
# 15945 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHS equ 0812h ;# 
# 15951 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSL equ 0812h ;# 
# 16062 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1PHSH equ 0813h ;# 
# 16101 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON0 equ 0814h ;# 
# 16220 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CON1 equ 0815h ;# 
# 16299 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR0 equ 0816h ;# 
# 16330 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE0 equ 0817h ;# 
# 16361 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IR1 equ 0818h ;# 
# 16392 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1IE1 equ 0819h ;# 
# 16423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPT equ 081Ah ;# 
# 16429 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTL equ 081Ah ;# 
# 16540 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1STPTH equ 081Bh ;# 
# 16639 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERR equ 081Ch ;# 
# 16645 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRL equ 081Ch ;# 
# 16756 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1ERRH equ 081Dh ;# 
# 16867 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CLK equ 088Ch ;# 
# 16910 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1SIG equ 088Dh ;# 
# 16977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL1 equ 088Eh ;# 
# 17044 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1 equ 088Fh ;# 
# 17050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1L equ 088Fh ;# 
# 17161 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC1H equ 0890h ;# 
# 17200 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON1 equ 0891h ;# 
# 17267 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL2 equ 0892h ;# 
# 17334 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2 equ 0893h ;# 
# 17340 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2L equ 0893h ;# 
# 17451 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC2H equ 0894h ;# 
# 17490 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON2 equ 0895h ;# 
# 17557 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CSEL3 equ 0896h ;# 
# 17624 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3 equ 0897h ;# 
# 17630 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3L equ 0897h ;# 
# 17741 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CC3H equ 0898h ;# 
# 17780 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
AT1CCON3 equ 0899h ;# 
# 17849 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMR equ 0D8Ch ;# 
# 17855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRL equ 0D8Ch ;# 
# 17924 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRH equ 0D8Dh ;# 
# 17993 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1TMRU equ 0D8Eh ;# 
# 18064 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPR equ 0D8Fh ;# 
# 18070 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRL equ 0D8Fh ;# 
# 18139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRH equ 0D90h ;# 
# 18208 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPRU equ 0D91h ;# 
# 18279 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPW equ 0D92h ;# 
# 18285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWL equ 0D92h ;# 
# 18354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWH equ 0D93h ;# 
# 18423 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CPWU equ 0D94h ;# 
# 18494 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PR equ 0D95h ;# 
# 18500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRL equ 0D95h ;# 
# 18569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRH equ 0D96h ;# 
# 18638 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1PRU equ 0D97h ;# 
# 18707 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON0 equ 0D98h ;# 
# 18771 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CON1 equ 0D99h ;# 
# 18870 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1STAT equ 0D9Ah ;# 
# 18959 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1CLK equ 0D9Bh ;# 
# 19026 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIG equ 0D9Ch ;# 
# 19117 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WIN equ 0D9Dh ;# 
# 19210 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMR equ 0D9Eh ;# 
# 19216 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRL equ 0D9Eh ;# 
# 19285 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRH equ 0D9Fh ;# 
# 19354 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2TMRU equ 0DA0h ;# 
# 19425 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPR equ 0DA1h ;# 
# 19431 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRL equ 0DA1h ;# 
# 19500 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRH equ 0DA2h ;# 
# 19569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPRU equ 0DA3h ;# 
# 19640 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPW equ 0DA4h ;# 
# 19646 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWL equ 0DA4h ;# 
# 19715 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWH equ 0DA5h ;# 
# 19784 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CPWU equ 0DA6h ;# 
# 19855 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PR equ 0DA7h ;# 
# 19861 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRL equ 0DA7h ;# 
# 19930 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRH equ 0DA8h ;# 
# 19999 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2PRU equ 0DA9h ;# 
# 20068 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON0 equ 0DAAh ;# 
# 20132 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CON1 equ 0DABh ;# 
# 20231 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2STAT equ 0DACh ;# 
# 20320 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2CLK equ 0DADh ;# 
# 20387 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIG equ 0DAEh ;# 
# 20478 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WIN equ 0DAFh ;# 
# 20569 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PPSLOCK equ 0E0Fh ;# 
# 20588 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
INTPPS equ 0E10h ;# 
# 20631 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T0CKIPPS equ 0E11h ;# 
# 20674 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1CKIPPS equ 0E12h ;# 
# 20717 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T1GPPS equ 0E13h ;# 
# 20760 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP1PPS equ 0E14h ;# 
# 20803 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CCP2PPS equ 0E15h ;# 
# 20846 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATINPPS equ 0E16h ;# 
# 20889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CWGINPPS equ 0E17h ;# 
# 20932 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T2PPS equ 0E18h ;# 
# 20975 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3CKIPPS equ 0E19h ;# 
# 21018 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T3GPPS equ 0E1Ah ;# 
# 21061 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T4PPS equ 0E1Bh ;# 
# 21104 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5CKIPPS equ 0E1Ch ;# 
# 21147 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T5GPPS equ 0E1Dh ;# 
# 21190 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
T6PPS equ 0E1Eh ;# 
# 21233 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC1PPS equ 0E1Fh ;# 
# 21276 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPCLKPPS equ 0E20h ;# 
# 21319 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPDATPPS equ 0E21h ;# 
# 21362 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SSPSSPPS equ 0E22h ;# 
# 21405 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC2PPS equ 0E23h ;# 
# 21448 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RXPPS equ 0E24h ;# 
# 21491 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CKPPS equ 0E25h ;# 
# 21534 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1SIGPPS equ 0E26h ;# 
# 21577 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT1WINPPS equ 0E27h ;# 
# 21620 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN0PPS equ 0E28h ;# 
# 21663 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN1PPS equ 0E29h ;# 
# 21706 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN2PPS equ 0E2Ah ;# 
# 21749 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCIN3PPS equ 0E2Bh ;# 
# 21792 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2SIGPPS equ 0E2Ch ;# 
# 21835 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
SMT2WINPPS equ 0E2Dh ;# 
# 21878 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
ATCC3PPS equ 0E2Eh ;# 
# 21921 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA0PPS equ 0E90h ;# 
# 21964 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA1PPS equ 0E91h ;# 
# 22007 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA2PPS equ 0E92h ;# 
# 22050 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA4PPS equ 0E94h ;# 
# 22093 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RA5PPS equ 0E95h ;# 
# 22136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB4PPS equ 0E9Ch ;# 
# 22179 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB5PPS equ 0E9Dh ;# 
# 22222 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB6PPS equ 0E9Eh ;# 
# 22265 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RB7PPS equ 0E9Fh ;# 
# 22308 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC0PPS equ 0EA0h ;# 
# 22351 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC1PPS equ 0EA1h ;# 
# 22394 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC2PPS equ 0EA2h ;# 
# 22437 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC3PPS equ 0EA3h ;# 
# 22480 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC4PPS equ 0EA4h ;# 
# 22523 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC5PPS equ 0EA5h ;# 
# 22566 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC6PPS equ 0EA6h ;# 
# 22609 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
RC7PPS equ 0EA7h ;# 
# 22652 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLCDATA equ 0F0Fh ;# 
# 22689 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1CON equ 0F10h ;# 
# 22806 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1POL equ 0F11h ;# 
# 22883 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL0 equ 0F12h ;# 
# 22986 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL1 equ 0F13h ;# 
# 23089 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL2 equ 0F14h ;# 
# 23192 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1SEL3 equ 0F15h ;# 
# 23295 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS0 equ 0F16h ;# 
# 23406 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS1 equ 0F17h ;# 
# 23517 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS2 equ 0F18h ;# 
# 23628 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC1GLS3 equ 0F19h ;# 
# 23739 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2CON equ 0F1Ah ;# 
# 23856 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2POL equ 0F1Bh ;# 
# 23933 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL0 equ 0F1Ch ;# 
# 24036 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL1 equ 0F1Dh ;# 
# 24139 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL2 equ 0F1Eh ;# 
# 24242 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2SEL3 equ 0F1Fh ;# 
# 24345 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS0 equ 0F20h ;# 
# 24456 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS1 equ 0F21h ;# 
# 24567 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS2 equ 0F22h ;# 
# 24678 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC2GLS3 equ 0F23h ;# 
# 24789 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3CON equ 0F24h ;# 
# 24906 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3POL equ 0F25h ;# 
# 24983 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL0 equ 0F26h ;# 
# 25086 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL1 equ 0F27h ;# 
# 25189 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL2 equ 0F28h ;# 
# 25292 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3SEL3 equ 0F29h ;# 
# 25395 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS0 equ 0F2Ah ;# 
# 25506 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS1 equ 0F2Bh ;# 
# 25617 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS2 equ 0F2Ch ;# 
# 25728 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC3GLS3 equ 0F2Dh ;# 
# 25839 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4CON equ 0F2Eh ;# 
# 25956 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4POL equ 0F2Fh ;# 
# 26033 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL0 equ 0F30h ;# 
# 26136 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL1 equ 0F31h ;# 
# 26239 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL2 equ 0F32h ;# 
# 26342 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4SEL3 equ 0F33h ;# 
# 26445 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS0 equ 0F34h ;# 
# 26556 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS1 equ 0F35h ;# 
# 26667 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS2 equ 0F36h ;# 
# 26778 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
CLC4GLS3 equ 0F37h ;# 
# 26889 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STATUS_SHAD equ 0FE4h ;# 
# 26920 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
WREG_SHAD equ 0FE5h ;# 
# 26939 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
BSR_SHAD equ 0FE6h ;# 
# 26958 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
PCLATH_SHAD equ 0FE7h ;# 
# 26977 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0L_SHAD equ 0FE8h ;# 
# 26996 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR0H_SHAD equ 0FE9h ;# 
# 27015 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1L_SHAD equ 0FEAh ;# 
# 27034 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
FSR1H_SHAD equ 0FEBh ;# 
# 27053 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
STKPTR equ 0FEDh ;# 
# 27072 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSL equ 0FEEh ;# 
# 27091 "/Applications/microchip/xc8/v1.35/include/pic16f1619.h"
TOSH equ 0FEFh ;# 
DABS 1,1568,32	;_dacBuffer
DABS 1,1440,80	;_dacBuffer
DABS 1,1312,80	;_dacBuffer
DABS 1,1198,66	;_dacBuffer
DABS 1,1184,14	;_adcBuffer
DABS 1,1056,80	;_adcBuffer
DABS 1,928,80	;_adcBuffer
DABS 1,800,80	;_adcBuffer
DABS 1,748,4	;_adcBuffer
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_iirDoFilter
	FNCALL	_main,_iirGetOutValue
	FNCALL	_main,_iirInit
	FNCALL	_iirDoFilter,_iirFilter_2nd_Ord
	FNCALL	_SYSTEM_Initialize,_ADC1_Initialize
	FNCALL	_SYSTEM_Initialize,_DAC1_Initialize
	FNCALL	_SYSTEM_Initialize,_MATHACC_Initialize
	FNCALL	_SYSTEM_Initialize,_OSCILLATOR_Initialize
	FNCALL	_SYSTEM_Initialize,_PIN_MANAGER_Initialize
	FNCALL	_SYSTEM_Initialize,_TMR1_Initialize
	FNCALL	_TMR1_Initialize,_TMR1_StartTimer
	FNROOT	_main
	FNCALL	_INTERRUPT_InterruptManager,_ADC1_ISR
	FNCALL	_INTERRUPT_InterruptManager,_TMR1_ISR
	FNCALL	_TMR1_ISR,_ADC1_StartConversion
	FNCALL	_TMR1_ISR,_UpdateTick
	FNCALL	_ADC1_ISR,_SignalProcessEngine
	FNCALL	_SignalProcessEngine,_ADC1_GetConversionResult
	FNCALL	_SignalProcessEngine,_DAC1_SetOutput
	FNCALL	intlevel1,_INTERRUPT_InterruptManager
	global	intlevel1
	FNROOT	intlevel1
	global	_iirCoef_b
psect	stringtext,class=STRCODE,delta=2,noexec
global __pstringtext
__pstringtext:
	file	"main.c"
	line	77
_iirCoef_b:
	retlw	022h
	retlw	02Bh

	retlw	0DBh
	retlw	0

	retlw	022h
	retlw	02Bh

	global __end_of_iirCoef_b
__end_of_iirCoef_b:
	global	_iirCoef_a
psect	stringtext
	file	"main.c"
	line	76
_iirCoef_a:
	retlw	0A2h
	retlw	0E5h

	retlw	0F5h
	retlw	048h

	global __end_of_iirCoef_a
__end_of_iirCoef_a:
	global	_iirCoef_b
	global	_iirCoef_a
	global	_outOfFilters
	global	_timeQuanta
	global	_tickCounter
	global	_iirStructure
	global	_shouldFilter
	global	_filterMemPool
	global	_adcBuffer
	global	_dacBuffer
	global	_timer1ReloadVal
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_timer1ReloadVal:
       ds      2

	global	_FSR0
_FSR0	set	0x4
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0x10
	global	_PIR5bits
_PIR5bits	set	0x14
	global	_T1CON
_T1CON	set	0x18
	global	_T1CONbits
_T1CONbits	set	0x18
	global	_T1GCON
_T1GCON	set	0x19
	global	_T1GCONbits
_T1GCONbits	set	0x19
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_ADCON0
_ADCON0	set	0x9D
	global	_ADCON0bits
_ADCON0bits	set	0x9D
	global	_ADCON1
_ADCON1	set	0x9E
	global	_ADCON2
_ADCON2	set	0x9F
	global	_ADRESH
_ADRESH	set	0x9C
	global	_ADRESL
_ADRESL	set	0x9B
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x95
	global	_OSCCON
_OSCCON	set	0x99
	global	_OSCSTAT
_OSCSTAT	set	0x9A
	global	_OSCTUNE
_OSCTUNE	set	0x98
	global	_PIE1bits
_PIE1bits	set	0x90
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISC
_TRISC	set	0x8E
	global	_DAC1CON0
_DAC1CON0	set	0x118
	global	_DAC1CON1
_DAC1CON1	set	0x119
	global	_LATA
_LATA	set	0x10C
	global	_LATB
_LATB	set	0x10D
	global	_LATC
_LATC	set	0x10E
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
	global	_ANSELC
_ANSELC	set	0x18E
	global	_WPUB
_WPUB	set	0x20D
	global	_WPUC
_WPUC	set	0x20E
	global	_PID1INH
_PID1INH	set	0x58F
	global	_PID1INL
_PID1INL	set	0x58E
	global	_PID1K1H
_PID1K1H	set	0x591
	global	_PID1K1L
_PID1K1L	set	0x590
	global	_PID1OUTHH
_PID1OUTHH	set	0x599
	global	_PID1OUTHL
_PID1OUTHL	set	0x598
	global	_PID1OUTLH
_PID1OUTLH	set	0x597
	global	_PID1OUTLL
_PID1OUTLL	set	0x596
	global	_PID1OUTU
_PID1OUTU	set	0x59A
	global	_PID1SETH
_PID1SETH	set	0x58D
	global	_PID1SETL
_PID1SETL	set	0x58C
	global	_PID1CON
_PID1CON	set	0x614
	global	_PID1CONbits
_PID1CONbits	set	0x614
; #config settings
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_FCMEN$ON
__CFG_FCMEN$ON equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_IESO$ON
__CFG_IESO$ON equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_PPS1WAY$OFF
__CFG_PPS1WAY$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LPBOR$OFF
__CFG_LPBOR$OFF equ 0x0
global __CFG_BORV$LO
__CFG_BORV$LO equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
global __CFG_ZCD$OFF
__CFG_ZCD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_PLLEN$OFF
__CFG_PLLEN$OFF equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_WDTCPS$WDTCPS1F
__CFG_WDTCPS$WDTCPS1F equ 0x0
global __CFG_WDTCCS$SWC
__CFG_WDTCCS$SWC equ 0x0
global __CFG_WDTCWS$WDTCWSSW
__CFG_WDTCWS$WDTCWSSW equ 0x0
	file	"dist/default/production/DigitalFilter_Curiosity.X.production.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
DABS 1,8668,0,_adcBuffer	;BIGRAM
DABS 1,8926,0,_dacBuffer	;BIGRAM
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_outOfFilters:
       ds      1

_timeQuanta:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_tickCounter:
       ds      2

_iirStructure:
       ds      1

_shouldCopy:
       ds      1

_shouldFilter:
       ds      1

_filterMemPool:
       ds      22

	file	"dist/default/production/DigitalFilter_Curiosity.X.production.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	btemp/btemp+1 has the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	movlw	1
	subwf	btemp,f
	movlw	0
	subwfb btemp+1,f
	movf btemp+1,w
	iorwf btemp,w
	skipz
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BIGRAM
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBIGRAM
	movlw	low(__pbssBIGRAM)
	movwf	fsr0l
	movlw	high(__pbssBIGRAM)
	movwf	fsr0h
	movlw	low(0204h)
	movwf	btemp
	movlw	high(0204h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	low(01Bh)
	movwf	btemp
	movlw	high(01Bh)
	movwf	btemp+1
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_SignalProcessEngine:	; 0 bytes @ 0x0
?_OSCILLATOR_Initialize:	; 0 bytes @ 0x0
?_DAC1_Initialize:	; 0 bytes @ 0x0
?_MATHACC_Initialize:	; 0 bytes @ 0x0
?_TMR1_Initialize:	; 0 bytes @ 0x0
?_TMR1_StartTimer:	; 0 bytes @ 0x0
?_UpdateTick:	; 0 bytes @ 0x0
??_UpdateTick:	; 0 bytes @ 0x0
?_iirFilter_2nd_Ord:	; 0 bytes @ 0x0
?_ADC1_Initialize:	; 0 bytes @ 0x0
?_ADC1_StartConversion:	; 0 bytes @ 0x0
??_ADC1_StartConversion:	; 0 bytes @ 0x0
?_ADC1_ISR:	; 0 bytes @ 0x0
?_PIN_MANAGER_Initialize:	; 0 bytes @ 0x0
?_SYSTEM_Initialize:	; 0 bytes @ 0x0
?_TMR1_ISR:	; 0 bytes @ 0x0
?_DAC1_SetOutput:	; 0 bytes @ 0x0
??_DAC1_SetOutput:	; 0 bytes @ 0x0
?_INTERRUPT_InterruptManager:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?_ADC1_GetConversionResult
?_ADC1_GetConversionResult:	; 2 bytes @ 0x0
	global	DAC1_SetOutput@inputData
DAC1_SetOutput@inputData:	; 1 bytes @ 0x0
	ds	1
	global	ADC1_StartConversion@channel
ADC1_StartConversion@channel:	; 1 bytes @ 0x1
	ds	1
??_ADC1_GetConversionResult:	; 0 bytes @ 0x2
??_TMR1_ISR:	; 0 bytes @ 0x2
	global	SignalProcessEngine@dacResult
SignalProcessEngine@dacResult:	; 1 bytes @ 0x2
	ds	1
??_ADC1_ISR:	; 0 bytes @ 0x3
??_INTERRUPT_InterruptManager:	; 0 bytes @ 0x3
	ds	1
??_OSCILLATOR_Initialize:	; 0 bytes @ 0x4
??_DAC1_Initialize:	; 0 bytes @ 0x4
??_MATHACC_Initialize:	; 0 bytes @ 0x4
??_TMR1_Initialize:	; 0 bytes @ 0x4
??_TMR1_StartTimer:	; 0 bytes @ 0x4
??_iirInit:	; 0 bytes @ 0x4
?_iirDoFilter:	; 0 bytes @ 0x4
??_iirGetOutValue:	; 0 bytes @ 0x4
??_iirFilter_2nd_Ord:	; 0 bytes @ 0x4
??_ADC1_Initialize:	; 0 bytes @ 0x4
??_PIN_MANAGER_Initialize:	; 0 bytes @ 0x4
??_SYSTEM_Initialize:	; 0 bytes @ 0x4
	global	iirGetOutValue@f
iirGetOutValue@f:	; 1 bytes @ 0x4
	global	iirDoFilter@input
iirDoFilter@input:	; 2 bytes @ 0x4
	ds	1
	global	iirInit@f
iirInit@f:	; 1 bytes @ 0x5
	ds	1
??_iirDoFilter:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_SignalProcessEngine:	; 0 bytes @ 0x0
	ds	18
?_iirInit:	; 1 bytes @ 0x12
	global	?_iirGetOutValue
?_iirGetOutValue:	; 2 bytes @ 0x12
	global	iirInit@a_coeffs
iirInit@a_coeffs:	; 2 bytes @ 0x12
	global	iirDoFilter@__fsrTmp
iirDoFilter@__fsrTmp:	; 2 bytes @ 0x12
	ds	2
	global	iirDoFilter@f
iirDoFilter@f:	; 1 bytes @ 0x14
	global	iirInit@b_coeffs
iirInit@b_coeffs:	; 2 bytes @ 0x14
	ds	2
??_main:	; 0 bytes @ 0x16
	ds	8
	global	main@timeCurrent
main@timeCurrent:	; 2 bytes @ 0x1E
	ds	2
	global	main@inactiveBuffer
main@inactiveBuffer:	; 1 bytes @ 0x20
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x21
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    10
;!    Data        0
;!    BSS         29
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     35      62
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            76      0       0
;!    BANK6             0      0       0
;!    BANK7             0      0       0
;!    BANK8             0      0       0
;!    BANK9             0      0       0
;!    BANK10            0      0       0
;!    BANK11            0      0       0
;!    BANK12            0      0       0

;!
;!Pointer List with Targets:
;!
;!    __builtin_memcpy$1	PTR const void  size(2) Largest target is 8192
;!		 -> ROM(CODE[8192]), 
;!
;!    __builtin_memcpy$0	PTR void  size(2) Largest target is 258
;!		 -> dacBuffer(BIGRAM[258]), adcBuffer(BIGRAM[258]), 
;!
;!    iirGetOutValue@f	PTR struct __iir size(1) Largest target is 22
;!		 -> filterMemPool(BANK0[22]), NULL(NULL[0]), 
;!
;!    iirDoFilter@f	PTR struct __iir size(1) Largest target is 22
;!		 -> filterMemPool(BANK0[22]), NULL(NULL[0]), 
;!
;!    iirInit@b_coeffs	PTR const int  size(2) Largest target is 6
;!		 -> iirCoef_b(CODE[6]), 
;!
;!    iirInit@a_coeffs	PTR const int  size(2) Largest target is 4
;!		 -> iirCoef_a(CODE[4]), 
;!
;!    iirInit@f	PTR struct __iir size(1) Largest target is 22
;!		 -> filterMemPool(BANK0[22]), 
;!
;!    sp__iirInit	PTR struct __iir size(1) Largest target is 22
;!		 -> filterMemPool(BANK0[22]), NULL(NULL[0]), 
;!
;!    iirStructure	PTR struct __iir size(1) Largest target is 22
;!		 -> filterMemPool(BANK0[22]), NULL(NULL[0]), 
;!
;!    sp____builtin_memcpy	PTR void  size(2) Largest target is 4096
;!		 -> RAM(DATA[4096]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_iirDoFilter
;!    _main->_iirInit
;!
;!Critical Paths under _INTERRUPT_InterruptManager in COMMON
;!
;!    _TMR1_ISR->_ADC1_StartConversion
;!    _ADC1_ISR->_SignalProcessEngine
;!    _SignalProcessEngine->_ADC1_GetConversionResult
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_iirInit
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK0
;!
;!    _ADC1_ISR->_SignalProcessEngine
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 8, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                13    13      0    1291
;!                                             22 BANK0     13    13      0
;!                  _SYSTEM_Initialize
;!                        _iirDoFilter
;!                     _iirGetOutValue
;!                            _iirInit
;! ---------------------------------------------------------------------------------
;! (1) _iirInit                                              6     2      4     684
;!                                              4 COMMON     2     2      0
;!                                             18 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (1) _iirGetOutValue                                       4     1      3      95
;!                                              4 COMMON     1     1      0
;!                                             18 BANK0      3     0      3
;! ---------------------------------------------------------------------------------
;! (1) _iirDoFilter                                          5     3      2     268
;!                                              4 COMMON     2     0      2
;!                                             18 BANK0      3     3      0
;!                  _iirFilter_2nd_Ord
;! ---------------------------------------------------------------------------------
;! (2) _iirFilter_2nd_Ord                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    0     0      0       0
;!                    _ADC1_Initialize
;!                    _DAC1_Initialize
;!                 _MATHACC_Initialize
;!              _OSCILLATOR_Initialize
;!             _PIN_MANAGER_Initialize
;!                    _TMR1_Initialize
;! ---------------------------------------------------------------------------------
;! (2) _TMR1_Initialize                                      0     0      0       0
;!                    _TMR1_StartTimer
;! ---------------------------------------------------------------------------------
;! (3) _TMR1_StartTimer                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _PIN_MANAGER_Initialize                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _OSCILLATOR_Initialize                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _MATHACC_Initialize                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _DAC1_Initialize                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ADC1_Initialize                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _INTERRUPT_InterruptManager                           1     1      0      60
;!                                              3 COMMON     1     1      0
;!                           _ADC1_ISR
;!                           _TMR1_ISR
;! ---------------------------------------------------------------------------------
;! (5) _TMR1_ISR                                             0     0      0      15
;!               _ADC1_StartConversion
;!                         _UpdateTick
;! ---------------------------------------------------------------------------------
;! (6) _UpdateTick                                           1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _ADC1_StartConversion                                 2     2      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _ADC1_ISR                                             0     0      0      45
;!                _SignalProcessEngine
;! ---------------------------------------------------------------------------------
;! (6) _SignalProcessEngine                                 19    19      0      45
;!                                              2 COMMON     1     1      0
;!                                              0 BANK0     18    18      0
;!           _ADC1_GetConversionResult
;!                     _DAC1_SetOutput
;! ---------------------------------------------------------------------------------
;! (7) _DAC1_SetOutput                                       1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) _ADC1_GetConversionResult                             2     0      2       0
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _SYSTEM_Initialize
;!     _ADC1_Initialize
;!     _DAC1_Initialize
;!     _MATHACC_Initialize
;!     _OSCILLATOR_Initialize
;!     _PIN_MANAGER_Initialize
;!     _TMR1_Initialize
;!       _TMR1_StartTimer
;!   _iirDoFilter
;!     _iirFilter_2nd_Ord
;!   _iirGetOutValue
;!   _iirInit
;!
;! _INTERRUPT_InterruptManager (ROOT)
;!   _ADC1_ISR
;!     _SignalProcessEngine
;!       _ADC1_GetConversionResult
;!       _DAC1_SetOutput
;!   _TMR1_ISR
;!     _ADC1_StartConversion
;!     _UpdateTick
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3E0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      6       A       2       71.4%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     23      3E       5       77.5%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITBANK5            50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK5               4C      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITBANK6            50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BANK6                0      0       0      17        0.0%
;!BITBANK7            50      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BANK7                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!ABS                  0      0      48      20        0.0%
;!BITBANK8            50      0       0      21        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BANK8                0      0       0      22        0.0%
;!BITBANK9            50      0       0      23        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BANK9                0      0       0      24        0.0%
;!BITBANK10           50      0       0      25        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BANK10               0      0       0      26        0.0%
;!BITBANK11           50      0       0      27        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BANK11               0      0       0      28        0.0%
;!BITBANK12           20      0       0      29        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BANK12               0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!DATA                 0      0      48      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 170 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  inactiveBuff    1   32[BANK0 ] unsigned char 
;;  i               2   33[BANK0 ] unsigned int 
;;  timeCurrent     2   30[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_SYSTEM_Initialize
;;		_iirDoFilter
;;		_iirGetOutValue
;;		_iirInit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"main.c"
	line	170
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	170
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 9
; Regs used in _main: [allreg]
	line	172
	
l1337:	
;main.c: 172: uint16_t i = 0;
	movlb 0	; select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	173
;main.c: 173: uint16_t timeCurrent = 0;
	clrf	(main@timeCurrent)
	clrf	(main@timeCurrent+1)
	line	178
	
l1339:	
;main.c: 178: SYSTEM_Initialize();
	fcall	_SYSTEM_Initialize
	line	183
	
l1341:	
;main.c: 183: TRISA &= ~(1 << 5);
	movlw	low(0DFh)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movlb 1	; select bank1
	andwf	(140)^080h,f	;volatile
	line	184
	
l1343:	
;main.c: 184: LATA &= ~(1 << 5);
	movlw	low(0DFh)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movlb 2	; select bank2
	andwf	(268)^0100h,f	;volatile
	line	189
	
l1345:	
;main.c: 189: __builtin_memcpy(&adcBuffer,0,sizeof(ppbuf_t));
	movlw	low(8668)
	movwf	fsr1l
	movlw	high(8668)
	movwf	(fsr1l)+1
	
	goto	mcp0
mcp0b:
	movlw	low(0)
	movwf	fsr0l
	movlw	high(0)
	movwf	(fsr0l)+1
	
	movlw	02h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	01h
	movwf	(??_main+0)+0+1
	
	u58m0:
	moviw	fsr0++
	movwi	fsr1++
	movlw	1
	subwf	(??_main+0)+0,f
	movlw	0
	subwfb	(??_main+0)+0+1,f
	movf	(??_main+0)+0+1,w
	iorwf	(??_main+0)+0,w
	btfss	status,2
goto	u58m0
	goto	u58m1
mcp0:
	goto	mcp0b
u58m1:
	
	line	190
	
l1347:	
;main.c: 190: __builtin_memcpy(&dacBuffer,0,sizeof(ppbuf_t));
	movlw	low(8926)
	movwf	fsr1l
	movlw	high(8926)
	movwf	(fsr1l)+1
	
	goto	mcp1
mcp1b:
	movlw	low(0)
	movwf	fsr0l
	movlw	high(0)
	movwf	(fsr0l)+1
	
	movlw	02h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	01h
	movwf	(??_main+0)+0+1
	
	u59m0:
	moviw	fsr0++
	movwi	fsr1++
	movlw	1
	subwf	(??_main+0)+0,f
	movlw	0
	subwfb	(??_main+0)+0+1,f
	movf	(??_main+0)+0+1,w
	iorwf	(??_main+0)+0,w
	btfss	status,2
goto	u59m0
	goto	u59m1
mcp1:
	goto	mcp1b
u59m1:
	
	line	195
	
l1349:	
;main.c: 195: iirStructure = iirInit(&iirCoef_a[0],&iirCoef_b[0]);
	movlw	low(((_iirCoef_a)|8000h))
	movlb 0	; select bank0
	movwf	(iirInit@a_coeffs)
	movlw	high(((_iirCoef_a)|8000h))
	movwf	((iirInit@a_coeffs))+1
	movlw	low(((_iirCoef_b)|8000h))
	movwf	(iirInit@b_coeffs)
	movlw	high(((_iirCoef_b)|8000h))
	movwf	((iirInit@b_coeffs))+1
	fcall	_iirInit
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_iirStructure)
	line	201
	
l1351:	
;main.c: 201: (INTCONbits.PEIE = 1);
	bsf	(11),6	;volatile
	line	202
	
l1353:	
;main.c: 202: (INTCONbits.GIE = 1);
	bsf	(11),7	;volatile
	line	207
	
l1355:	
;main.c: 207: timeCurrent = tickCounter;
	movf	(_tickCounter+1),w
	movwf	(main@timeCurrent+1)
	movf	(_tickCounter),w
	movwf	(main@timeCurrent)
	goto	l1357
	line	211
;main.c: 210: for(;;)
	
l285:	
	line	216
	
l1357:	
;main.c: 211: {
;main.c: 216: if(shouldFilter == 1)
	movlb 0	; select bank0
		decf	((_shouldFilter)),w
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l1381
u600:
	line	219
	
l1359:	
;main.c: 217: {
;main.c: 219: uint8_t inactiveBuffer = (~adcBuffer.activeBuffer & 0x01);
	movlw	low(8668+0100h)
	movwf	fsr1l
	movlw	high(8668+0100h)
	movwf	(fsr1l)+1
	comf	indf1,w
	andlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@inactiveBuffer)
	line	224
	
l1361:	
;main.c: 224: shouldFilter = 0;
	clrf	(_shouldFilter)
	line	230
	
l1363:	
;main.c: 230: for(i = 0; i < 64; i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1365:	
	movlw	0
	subwf	(main@i+1),w
	movlw	040h
	skipnz
	subwf	(main@i),w
	skipc
	goto	u611
	goto	u610
u611:
	goto	l1369
u610:
	goto	l1381
	
l1367:	
	goto	l1381
	line	231
	
l287:	
	line	237
	
l1369:	
;main.c: 231: {
;main.c: 237: iirDoFilter(iirStructure, adcBuffer.pingpongBuffer[inactiveBuffer][i]);
	movf	(main@i+1),w
	movwf	(??_main+0)+0+1
	movf	(main@i),w
	movwf	(??_main+0)+0
	lslf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	movf	(main@inactiveBuffer),w
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movlw	07h
u625:
	lslf	(??_main+2)+0,f
	rlf	(??_main+2)+1,f
	decfsz	wreg,f
	goto	u625
	movlw	low(8668)
	movwf	(??_main+4)+0
	movlw	high(8668)
	movwf	(??_main+4)+0+1
	movf	0+(??_main+2)+0,w
	addwf	0+(??_main+4)+0,w
	movwf	(??_main+6)+0
	movf	1+(??_main+2)+0,w
	addwfc	1+(??_main+4)+0,w
	movwf	1+(??_main+6)+0
	movf	0+(??_main+0)+0,w
	addwf	0+(??_main+6)+0,w
	movwf	fsr1l
	movf	1+(??_main+0)+0,w
	addwfc	1+(??_main+6)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(iirDoFilter@input)
	moviw	[1]fsr1
	movwf	(iirDoFilter@input+1)
	movf	(_iirStructure),w
	fcall	_iirDoFilter
	line	242
	
l1371:	
;main.c: 242: inactiveBuffer = (~dacBuffer.activeBuffer & 0x01);
	movlw	low(8926+0100h)
	movwf	fsr1l
	movlw	high(8926+0100h)
	movwf	(fsr1l)+1
	comf	indf1,w
	andlw	01h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@inactiveBuffer)
	line	244
	
l1373:	
;main.c: 244: dacBuffer.pingpongBuffer[inactiveBuffer][i] = iirGetOutValue(iirStructure);
	movf	(_iirStructure),w
	fcall	_iirGetOutValue
	movlb 0	; select bank0
	movf	(main@i+1),w
	movwf	(??_main+0)+0+1
	movf	(main@i),w
	movwf	(??_main+0)+0
	lslf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	movf	(main@inactiveBuffer),w
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movlw	07h
u635:
	lslf	(??_main+2)+0,f
	rlf	(??_main+2)+1,f
	decfsz	wreg,f
	goto	u635
	movlw	low(8926)
	movwf	(??_main+4)+0
	movlw	high(8926)
	movwf	(??_main+4)+0+1
	movf	0+(??_main+2)+0,w
	addwf	0+(??_main+4)+0,w
	movwf	(??_main+6)+0
	movf	1+(??_main+2)+0,w
	addwfc	1+(??_main+4)+0,w
	movwf	1+(??_main+6)+0
	movf	0+(??_main+0)+0,w
	addwf	0+(??_main+6)+0,w
	movwf	fsr1l
	movf	1+(??_main+0)+0,w
	addwfc	1+(??_main+6)+0,w
	movwf	1+fsr1l
	movf	(0+(?_iirGetOutValue)),w
	movwi	[0]fsr1
	movf	(1+(?_iirGetOutValue)),w
	movwi	[1]fsr1
	line	249
	
l1375:	
;main.c: 249: inactiveBuffer = (~adcBuffer.activeBuffer & 0x01);
	movlw	low(8668+0100h)
	movwf	fsr1l
	movlw	high(8668+0100h)
	movwf	(fsr1l)+1
	comf	indf1,w
	andlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@inactiveBuffer)
	line	230
	
l1377:	
	movlw	01h
	addwf	(main@i),f
	movlw	0
	addwfc	(main@i+1),f
	
l1379:	
	movlw	0
	subwf	(main@i+1),w
	movlw	040h
	skipnz
	subwf	(main@i),w
	skipc
	goto	u641
	goto	u640
u641:
	goto	l1369
u640:
	goto	l1381
	
l288:	
	goto	l1381
	line	256
	
l286:	
	line	266
	
l1381:	
;main.c: 253: }
;main.c: 256: }
;main.c: 266: if(tickCounter - timeCurrent >= 100)
	comf	(main@timeCurrent),w
	movwf	(??_main+0)+0
	comf	(main@timeCurrent+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(_tickCounter),w
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(_tickCounter+1),w
	addwfc	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movlw	0
	subwf	1+(??_main+2)+0,w
	movlw	064h
	skipnz
	subwf	0+(??_main+2)+0,w
	skipc
	goto	u651
	goto	u650
u651:
	goto	l1357
u650:
	line	268
	
l1383:	
;main.c: 267: {
;main.c: 268: timeCurrent = tickCounter;
	movf	(_tickCounter+1),w
	movwf	(main@timeCurrent+1)
	movf	(_tickCounter),w
	movwf	(main@timeCurrent)
	line	269
	
l1385:	
;main.c: 269: LATA ^= (1 << 5);
	movlw	low(020h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movlb 2	; select bank2
	xorwf	(268)^0100h,f	;volatile
	goto	l1357
	line	270
	
l289:	
	line	272
;main.c: 270: }
;main.c: 272: }
	goto	l1357
	
l290:	
	line	274
	
l291:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_iirInit

;; *************** function _iirInit *****************
;; Defined at:
;;		line 36 in file "digitalfilter_2nd_ord.c"
;; Parameters:    Size  Location     Type
;;  a_coeffs        2   18[BANK0 ] PTR const int 
;;		 -> iirCoef_a(4), 
;;  b_coeffs        2   20[BANK0 ] PTR const int 
;;		 -> iirCoef_b(6), 
;; Auto vars:     Size  Location     Type
;;  f               1    5[COMMON] PTR struct __iir
;;		 -> filterMemPool(22), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR struct __iir
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"digitalfilter_2nd_ord.c"
	line	36
global __ptext1
__ptext1:	;psect for function _iirInit
psect	text1
	file	"digitalfilter_2nd_ord.c"
	line	36
	global	__size_of_iirInit
	__size_of_iirInit	equ	__end_of_iirInit-_iirInit
	
_iirInit:	
;incstack = 0
	opt	stack 11
; Regs used in _iirInit: [wreg-fsr1h+status,2+status,0]
	line	38
	
l1275:	
;digitalfilter_2nd_ord.c: 38: iirflt *f = &filterMemPool[0];
	movlw	(low(_filterMemPool|((0x0)<<8)))&0ffh
	movwf	(??_iirInit+0)+0
	movf	(??_iirInit+0)+0,w
	movwf	(iirInit@f)
	line	40
	
l1277:	
;digitalfilter_2nd_ord.c: 40: if(outOfFilters != 1)
		decf	((_outOfFilters)),w
	btfsc	status,2
	goto	u551
	goto	u550
u551:
	goto	l1309
u550:
	line	47
	
l1279:	
;digitalfilter_2nd_ord.c: 41: {
;digitalfilter_2nd_ord.c: 47: f->currentOutput = 0;
	movf	(iirInit@f),w
	addlw	0Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	48
	
l1281:	
;digitalfilter_2nd_ord.c: 48: f->inputState[0] = 0;
	movf	(iirInit@f),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	49
	
l1283:	
;digitalfilter_2nd_ord.c: 49: f->inputState[1] = 0;
	movf	(iirInit@f),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	50
	
l1285:	
;digitalfilter_2nd_ord.c: 50: f->inputState[2] = 0;
	movf	(iirInit@f),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	53
	
l1287:	
;digitalfilter_2nd_ord.c: 53: f->outputState[0] = 0;
	movf	(iirInit@f),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	54
	
l1289:	
;digitalfilter_2nd_ord.c: 54: f->outputState[1] = 0;
	movf	(iirInit@f),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	59
	
l1291:	
;digitalfilter_2nd_ord.c: 59: f->pCoefTable_a[0] = a_coeffs[0];
	movlb 0	; select bank0
	movf	(iirInit@a_coeffs),w
	movwf	fsr1l
	movf	(iirInit@a_coeffs+1),w
	movwf	fsr1h

	movf	(iirInit@f),w
	addlw	0Ch
	movwf	fsr0l
	clrf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	60
	
l1293:	
;digitalfilter_2nd_ord.c: 60: f->pCoefTable_a[1] = a_coeffs[1];
	movf	(iirInit@a_coeffs),w
	movwf	fsr1l
	movf	(iirInit@a_coeffs+1),w
	movwf	fsr1h
	addfsr	fsr1,02h
	movf	(iirInit@f),w
	addlw	0Eh
	movwf	fsr0l
	clrf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	62
	
l1295:	
;digitalfilter_2nd_ord.c: 62: f->pCoefTable_b[0] = b_coeffs[0];
	movf	(iirInit@b_coeffs),w
	movwf	fsr1l
	movf	(iirInit@b_coeffs+1),w
	movwf	fsr1h

	movf	(iirInit@f),w
	addlw	010h
	movwf	fsr0l
	clrf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	63
	
l1297:	
;digitalfilter_2nd_ord.c: 63: f->pCoefTable_b[1] = b_coeffs[1];
	movf	(iirInit@b_coeffs),w
	movwf	fsr1l
	movf	(iirInit@b_coeffs+1),w
	movwf	fsr1h
	addfsr	fsr1,02h
	movf	(iirInit@f),w
	addlw	012h
	movwf	fsr0l
	clrf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	64
	
l1299:	
;digitalfilter_2nd_ord.c: 64: f->pCoefTable_b[2] = b_coeffs[2];
	movf	(iirInit@b_coeffs),w
	movwf	fsr1l
	movf	(iirInit@b_coeffs+1),w
	movwf	fsr1h
	addfsr	fsr1,04h
	movf	(iirInit@f),w
	addlw	014h
	movwf	fsr0l
	clrf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	70
	
l1301:	
;digitalfilter_2nd_ord.c: 70: outOfFilters = 1;
	clrf	(_outOfFilters)
	incf	(_outOfFilters),f
	line	72
	
l1303:	
;digitalfilter_2nd_ord.c: 72: return(f);
	movf	(iirInit@f),w
	goto	l303
	
l1305:	
	goto	l303
	line	73
	
l1307:	
;digitalfilter_2nd_ord.c: 73: }
	goto	l303
	line	74
	
l302:	
	line	79
	
l1309:	
;digitalfilter_2nd_ord.c: 74: else
;digitalfilter_2nd_ord.c: 75: {
;digitalfilter_2nd_ord.c: 79: return(0);
	movlw	low(0)
	goto	l303
	
l1311:	
	goto	l303
	line	80
	
l304:	
	line	81
	
l303:	
	return
	opt stack 0
GLOBAL	__end_of_iirInit
	__end_of_iirInit:
	signat	_iirInit,8313
	global	_iirGetOutValue

;; *************** function _iirGetOutValue *****************
;; Defined at:
;;		line 115 in file "digitalfilter_2nd_ord.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR struct __iir
;;		 -> filterMemPool(22), NULL(0), 
;; Auto vars:     Size  Location     Type
;;  f               1    4[COMMON] PTR struct __iir
;;		 -> filterMemPool(22), NULL(0), 
;; Return value:  Size  Location     Type
;;                  2   18[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	115
global __ptext2
__ptext2:	;psect for function _iirGetOutValue
psect	text2
	file	"digitalfilter_2nd_ord.c"
	line	115
	global	__size_of_iirGetOutValue
	__size_of_iirGetOutValue	equ	__end_of_iirGetOutValue-_iirGetOutValue
	
_iirGetOutValue:	
;incstack = 0
	opt	stack 11
; Regs used in _iirGetOutValue: [wreg+fsr1l+fsr1h+status,2+status,0]
;iirGetOutValue@f stored from wreg
	movwf	(iirGetOutValue@f)
	line	117
	
l1325:	
;digitalfilter_2nd_ord.c: 117: if(f != (iirflt *)0)
	movf	((iirGetOutValue@f)),w
	btfsc	status,2
	goto	u571
	goto	u570
u571:
	goto	l1333
u570:
	line	119
	
l1327:	
;digitalfilter_2nd_ord.c: 118: {
;digitalfilter_2nd_ord.c: 119: return(f->currentOutput);
	movf	(iirGetOutValue@f),w
	addlw	0Ah
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(?_iirGetOutValue)
	moviw	[1]fsr1
	movwf	(?_iirGetOutValue+1)
	goto	l312
	
l1329:	
	goto	l312
	line	120
	
l1331:	
;digitalfilter_2nd_ord.c: 120: }
	goto	l312
	line	121
	
l311:	
	line	123
	
l1333:	
;digitalfilter_2nd_ord.c: 121: else
;digitalfilter_2nd_ord.c: 122: {
;digitalfilter_2nd_ord.c: 123: return(0);
	movlb 0	; select bank0
	clrf	(?_iirGetOutValue)
	clrf	(?_iirGetOutValue+1)
	goto	l312
	
l1335:	
	goto	l312
	line	124
	
l313:	
	line	126
	
l312:	
	return
	opt stack 0
GLOBAL	__end_of_iirGetOutValue
	__end_of_iirGetOutValue:
	signat	_iirGetOutValue,4218
	global	_iirDoFilter

;; *************** function _iirDoFilter *****************
;; Defined at:
;;		line 86 in file "digitalfilter_2nd_ord.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR struct __iir
;;		 -> filterMemPool(22), NULL(0), 
;;  input           2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  f               1   20[BANK0 ] PTR struct __iir
;;		 -> filterMemPool(22), NULL(0), 
;;  __fsrTmp        2   18[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_iirFilter_2nd_Ord
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	86
global __ptext3
__ptext3:	;psect for function _iirDoFilter
psect	text3
	file	"digitalfilter_2nd_ord.c"
	line	86
	global	__size_of_iirDoFilter
	__size_of_iirDoFilter	equ	__end_of_iirDoFilter-_iirDoFilter
	
_iirDoFilter:	
;incstack = 0
	opt	stack 10
; Regs used in _iirDoFilter: [allreg]
;iirDoFilter@f stored from wreg
	movlb 0	; select bank0
	movwf	(iirDoFilter@f)
	line	88
	
l1313:	
;digitalfilter_2nd_ord.c: 88: uint16_t __fsrTmp = FSR0;
	movf	(4+1),w	;volatile
	movwf	(iirDoFilter@__fsrTmp+1)
	movf	(4),w	;volatile
	movwf	(iirDoFilter@__fsrTmp)
	line	90
	
l1315:	
;digitalfilter_2nd_ord.c: 90: if(f != (iirflt *)0)
	movf	((iirDoFilter@f)),w
	btfsc	status,2
	goto	u561
	goto	u560
u561:
	goto	l1323
u560:
	line	96
	
l1317:	
;digitalfilter_2nd_ord.c: 91: {
;digitalfilter_2nd_ord.c: 96: FSR0 = f;
	movf	(iirDoFilter@f),w
	movwf	(4)	;volatile
	andlw 0xff
skipz
movlw	0x0

	movwf	(4+1)	;volatile
	line	97
	
l1319:	
;digitalfilter_2nd_ord.c: 97: f->inputState[0] = input;
	movf	(iirDoFilter@f),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(iirDoFilter@input),w
	movwi	[0]fsr1
	movf	(iirDoFilter@input+1),w
	movwi	[1]fsr1
	line	102
	
l1321:	
;digitalfilter_2nd_ord.c: 102: iirFilter_2nd_Ord();
	fcall	_iirFilter_2nd_Ord
	goto	l1323
	line	103
	
l307:	
	line	108
	
l1323:	
;digitalfilter_2nd_ord.c: 103: }
;digitalfilter_2nd_ord.c: 108: FSR0 = __fsrTmp;
	movlb 0	; select bank0
	movf	(iirDoFilter@__fsrTmp+1),w
	movwf	(4+1)	;volatile
	movf	(iirDoFilter@__fsrTmp),w
	movwf	(4)	;volatile
	line	110
	
l308:	
	return
	opt stack 0
GLOBAL	__end_of_iirDoFilter
	__end_of_iirDoFilter:
	signat	_iirDoFilter,8312
	global	_iirFilter_2nd_Ord
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 77 in file "mcc_generated_files/mcc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADC1_Initialize
;;		_DAC1_Initialize
;;		_MATHACC_Initialize
;;		_OSCILLATOR_Initialize
;;		_PIN_MANAGER_Initialize
;;		_TMR1_Initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/mcc.c"
	line	77
global __ptext4
__ptext4:	;psect for function _SYSTEM_Initialize
psect	text4
	file	"mcc_generated_files/mcc.c"
	line	77
	global	__size_of_SYSTEM_Initialize
	__size_of_SYSTEM_Initialize	equ	__end_of_SYSTEM_Initialize-_SYSTEM_Initialize
	
_SYSTEM_Initialize:	
;incstack = 0
	opt	stack 9
; Regs used in _SYSTEM_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	78
	
l1143:	
;mcc.c: 78: OSCILLATOR_Initialize();
	fcall	_OSCILLATOR_Initialize
	line	79
;mcc.c: 79: PIN_MANAGER_Initialize();
	fcall	_PIN_MANAGER_Initialize
	line	80
;mcc.c: 80: ADC1_Initialize();
	fcall	_ADC1_Initialize
	line	81
;mcc.c: 81: DAC1_Initialize();
	fcall	_DAC1_Initialize
	line	82
;mcc.c: 82: MATHACC_Initialize();
	fcall	_MATHACC_Initialize
	line	83
;mcc.c: 83: TMR1_Initialize();
	fcall	_TMR1_Initialize
	line	84
	
l89:	
	return
	opt stack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,88
	global	_TMR1_Initialize

;; *************** function _TMR1_Initialize *****************
;; Defined at:
;;		line 70 in file "mcc_generated_files/tmr1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_TMR1_StartTimer
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/tmr1.c"
	line	70
global __ptext5
__ptext5:	;psect for function _TMR1_Initialize
psect	text5
	file	"mcc_generated_files/tmr1.c"
	line	70
	global	__size_of_TMR1_Initialize
	__size_of_TMR1_Initialize	equ	__end_of_TMR1_Initialize-_TMR1_Initialize
	
_TMR1_Initialize:	
;incstack = 0
	opt	stack 9
; Regs used in _TMR1_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	74
	
l1117:	
;tmr1.c: 74: T1CON = 0x00;
	movlb 0	; select bank0
	clrf	(24)	;volatile
	line	77
;tmr1.c: 77: T1GCON = 0x00;
	clrf	(25)	;volatile
	line	80
	
l1119:	
;tmr1.c: 80: TMR1H = 0xFC;
	movlw	low(0FCh)
	movwf	(23)	;volatile
	line	83
	
l1121:	
;tmr1.c: 83: TMR1L = 0x17;
	movlw	low(017h)
	movwf	(22)	;volatile
	line	86
	
l1123:	
;tmr1.c: 86: timer1ReloadVal = (TMR1H << 8) | TMR1L;
	movf	(23),w	;volatile
	movwf	(_timer1ReloadVal+1)	;volatile
	movf	(22),w	;volatile
	movwf	(_timer1ReloadVal)	;volatile
	line	89
	
l1125:	
;tmr1.c: 89: PIR1bits.TMR1IF = 0;
	bcf	(16),0	;volatile
	line	92
	
l1127:	
;tmr1.c: 92: PIE1bits.TMR1IE = 1;
	movlb 1	; select bank1
	bsf	(144)^080h,0	;volatile
	line	95
	
l1129:	
;tmr1.c: 95: TMR1_StartTimer();
	fcall	_TMR1_StartTimer
	line	96
	
l122:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Initialize
	__end_of_TMR1_Initialize:
	signat	_TMR1_Initialize,88
	global	_TMR1_StartTimer

;; *************** function _TMR1_StartTimer *****************
;; Defined at:
;;		line 98 in file "mcc_generated_files/tmr1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR1_Initialize
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	98
global __ptext6
__ptext6:	;psect for function _TMR1_StartTimer
psect	text6
	file	"mcc_generated_files/tmr1.c"
	line	98
	global	__size_of_TMR1_StartTimer
	__size_of_TMR1_StartTimer	equ	__end_of_TMR1_StartTimer-_TMR1_StartTimer
	
_TMR1_StartTimer:	
;incstack = 0
	opt	stack 9
; Regs used in _TMR1_StartTimer: []
	line	100
	
l1053:	
;tmr1.c: 100: T1CONbits.TMR1ON = 1;
	movlb 0	; select bank0
	bsf	(24),0	;volatile
	line	101
	
l125:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_StartTimer
	__end_of_TMR1_StartTimer:
	signat	_TMR1_StartTimer,88
	global	_PIN_MANAGER_Initialize

;; *************** function _PIN_MANAGER_Initialize *****************
;; Defined at:
;;		line 50 in file "mcc_generated_files/pin_manager.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/pin_manager.c"
	line	50
global __ptext7
__ptext7:	;psect for function _PIN_MANAGER_Initialize
psect	text7
	file	"mcc_generated_files/pin_manager.c"
	line	50
	global	__size_of_PIN_MANAGER_Initialize
	__size_of_PIN_MANAGER_Initialize	equ	__end_of_PIN_MANAGER_Initialize-_PIN_MANAGER_Initialize
	
_PIN_MANAGER_Initialize:	
;incstack = 0
	opt	stack 10
; Regs used in _PIN_MANAGER_Initialize: [wreg+status,2]
	line	51
	
l1091:	
;pin_manager.c: 51: LATA = 0x00;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	52
	
l1093:	
;pin_manager.c: 52: TRISA = 0x3E;
	movlw	low(03Eh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	53
	
l1095:	
;pin_manager.c: 53: ANSELA = 0x17;
	movlw	low(017h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	55
;pin_manager.c: 55: LATB = 0x00;
	movlb 2	; select bank2
	clrf	(269)^0100h	;volatile
	line	56
	
l1097:	
;pin_manager.c: 56: TRISB = 0xF0;
	movlw	low(0F0h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	57
	
l1099:	
;pin_manager.c: 57: ANSELB = 0x30;
	movlw	low(030h)
	movlb 3	; select bank3
	movwf	(397)^0180h	;volatile
	line	58
;pin_manager.c: 58: WPUB = 0x00;
	movlb 4	; select bank4
	clrf	(525)^0200h	;volatile
	line	60
;pin_manager.c: 60: LATC = 0x00;
	movlb 2	; select bank2
	clrf	(270)^0100h	;volatile
	line	61
	
l1101:	
;pin_manager.c: 61: TRISC = 0xFF;
	movlw	low(0FFh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	62
	
l1103:	
;pin_manager.c: 62: ANSELC = 0xCF;
	movlw	low(0CFh)
	movlb 3	; select bank3
	movwf	(398)^0180h	;volatile
	line	63
;pin_manager.c: 63: WPUC = 0x00;
	movlb 4	; select bank4
	clrf	(526)^0200h	;volatile
	line	65
	
l1105:	
;pin_manager.c: 65: OPTION_REGbits.nWPUEN = 0x01;
	movlb 1	; select bank1
	bsf	(149)^080h,7	;volatile
	line	68
	
l68:	
	return
	opt stack 0
GLOBAL	__end_of_PIN_MANAGER_Initialize
	__end_of_PIN_MANAGER_Initialize:
	signat	_PIN_MANAGER_Initialize,88
	global	_OSCILLATOR_Initialize

;; *************** function _OSCILLATOR_Initialize *****************
;; Defined at:
;;		line 86 in file "mcc_generated_files/mcc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/mcc.c"
	line	86
global __ptext8
__ptext8:	;psect for function _OSCILLATOR_Initialize
psect	text8
	file	"mcc_generated_files/mcc.c"
	line	86
	global	__size_of_OSCILLATOR_Initialize
	__size_of_OSCILLATOR_Initialize	equ	__end_of_OSCILLATOR_Initialize-_OSCILLATOR_Initialize
	
_OSCILLATOR_Initialize:	
;incstack = 0
	opt	stack 10
; Regs used in _OSCILLATOR_Initialize: [wreg+status,2]
	line	88
	
l1107:	
;mcc.c: 88: OSCCON = 0xF0;
	movlw	low(0F0h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	90
	
l1109:	
;mcc.c: 90: OSCSTAT = 0x00;
	clrf	(154)^080h	;volatile
	line	92
	
l1111:	
;mcc.c: 92: OSCTUNE = 0x00;
	clrf	(152)^080h	;volatile
	line	95
	
l92:	
	return
	opt stack 0
GLOBAL	__end_of_OSCILLATOR_Initialize
	__end_of_OSCILLATOR_Initialize:
	signat	_OSCILLATOR_Initialize,88
	global	_MATHACC_Initialize

;; *************** function _MATHACC_Initialize *****************
;; Defined at:
;;		line 60 in file "mcc_generated_files/mathacc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/mathacc.c"
	line	60
global __ptext9
__ptext9:	;psect for function _MATHACC_Initialize
psect	text9
	file	"mcc_generated_files/mathacc.c"
	line	60
	global	__size_of_MATHACC_Initialize
	__size_of_MATHACC_Initialize	equ	__end_of_MATHACC_Initialize-_MATHACC_Initialize
	
_MATHACC_Initialize:	
;incstack = 0
	opt	stack 10
; Regs used in _MATHACC_Initialize: [wreg]
	line	63
	
l1115:	
;mathacc.c: 63: PID1CON = 0x83;
	movlw	low(083h)
	movlb 12	; select bank12
	movwf	(1556)^0600h	;volatile
	line	64
	
l179:	
	return
	opt stack 0
GLOBAL	__end_of_MATHACC_Initialize
	__end_of_MATHACC_Initialize:
	signat	_MATHACC_Initialize,88
	global	_DAC1_Initialize

;; *************** function _DAC1_Initialize *****************
;; Defined at:
;;		line 58 in file "mcc_generated_files/dac1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/dac1.c"
	line	58
global __ptext10
__ptext10:	;psect for function _DAC1_Initialize
psect	text10
	file	"mcc_generated_files/dac1.c"
	line	58
	global	__size_of_DAC1_Initialize
	__size_of_DAC1_Initialize	equ	__end_of_DAC1_Initialize-_DAC1_Initialize
	
_DAC1_Initialize:	
;incstack = 0
	opt	stack 10
; Regs used in _DAC1_Initialize: [wreg]
	line	60
	
l1113:	
;dac1.c: 60: DAC1CON0 = 0xA0;
	movlw	low(0A0h)
	movlb 2	; select bank2
	movwf	(280)^0100h	;volatile
	line	62
;dac1.c: 62: DAC1CON1 = 0xFF;
	movlw	low(0FFh)
	movwf	(281)^0100h	;volatile
	line	63
	
l214:	
	return
	opt stack 0
GLOBAL	__end_of_DAC1_Initialize
	__end_of_DAC1_Initialize:
	signat	_DAC1_Initialize,88
	global	_ADC1_Initialize

;; *************** function _ADC1_Initialize *****************
;; Defined at:
;;		line 71 in file "mcc_generated_files/adc1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/adc1.c"
	line	71
global __ptext11
__ptext11:	;psect for function _ADC1_Initialize
psect	text11
	file	"mcc_generated_files/adc1.c"
	line	71
	global	__size_of_ADC1_Initialize
	__size_of_ADC1_Initialize	equ	__end_of_ADC1_Initialize-_ADC1_Initialize
	
_ADC1_Initialize:	
;incstack = 0
	opt	stack 10
; Regs used in _ADC1_Initialize: [wreg+status,2]
	line	75
	
l1057:	
;adc1.c: 75: ADCON0 = 0x01;
	movlw	low(01h)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	78
;adc1.c: 78: ADCON1 = 0x50;
	movlw	low(050h)
	movwf	(158)^080h	;volatile
	line	81
	
l1059:	
;adc1.c: 81: ADCON2 = 0x00;
	clrf	(159)^080h	;volatile
	line	84
	
l1061:	
;adc1.c: 84: ADRESL = 0x00;
	clrf	(155)^080h	;volatile
	line	87
	
l1063:	
;adc1.c: 87: ADRESH = 0x00;
	clrf	(156)^080h	;volatile
	line	90
	
l1065:	
;adc1.c: 90: PIE1bits.ADIE = 1;
	bsf	(144)^080h,6	;volatile
	line	91
	
l23:	
	return
	opt stack 0
GLOBAL	__end_of_ADC1_Initialize
	__end_of_ADC1_Initialize:
	signat	_ADC1_Initialize,88
	global	_INTERRUPT_InterruptManager

;; *************** function _INTERRUPT_InterruptManager *****************
;; Defined at:
;;		line 52 in file "mcc_generated_files/interrupt_manager.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC1_ISR
;;		_TMR1_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"mcc_generated_files/interrupt_manager.c"
	line	52
	global	__size_of_INTERRUPT_InterruptManager
	__size_of_INTERRUPT_InterruptManager	equ	__end_of_INTERRUPT_InterruptManager-_INTERRUPT_InterruptManager
	
_INTERRUPT_InterruptManager:	
;incstack = 0
	opt	stack 9
; Regs used in _INTERRUPT_InterruptManager: [wreg-fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_INTERRUPT_InterruptManager+0)
	line	54
	
i1l1215:	
;interrupt_manager.c: 54: if (PIE1bits.TMR1IE == 1 && PIR1bits.TMR1IF == 1) {
	movlb 1	; select bank1
	btfss	(144)^080h,0	;volatile
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l231
u43_20:
	
i1l1217:	
	movlb 0	; select bank0
	btfss	(16),0	;volatile
	goto	u44_21
	goto	u44_20
u44_21:
	goto	i1l231
u44_20:
	line	55
	
i1l1219:	
;interrupt_manager.c: 55: TMR1_ISR();
	fcall	_TMR1_ISR
	line	56
;interrupt_manager.c: 56: } else if (PIE1bits.ADIE == 1 && PIR1bits.ADIF == 1) {
	goto	i1l235
	
i1l231:	
	movlb 1	; select bank1
	btfss	(144)^080h,6	;volatile
	goto	u45_21
	goto	u45_20
u45_21:
	goto	i1l235
u45_20:
	
i1l1221:	
	movlb 0	; select bank0
	btfss	(16),6	;volatile
	goto	u46_21
	goto	u46_20
u46_21:
	goto	i1l235
u46_20:
	line	57
	
i1l1223:	
;interrupt_manager.c: 57: ADC1_ISR();
	fcall	_ADC1_ISR
	line	58
;interrupt_manager.c: 58: } else {
	goto	i1l235
	
i1l233:	
	goto	i1l235
	line	60
	
i1l234:	
	goto	i1l235
	
i1l232:	
	line	61
	
i1l235:	
	movf	(??_INTERRUPT_InterruptManager+0),w
	movlb 0	; select bank0
	movwf	btemp+1
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	opt stack 0
GLOBAL	__end_of_INTERRUPT_InterruptManager
	__end_of_INTERRUPT_InterruptManager:
	signat	_INTERRUPT_InterruptManager,88
	global	_TMR1_ISR

;; *************** function _TMR1_ISR *****************
;; Defined at:
;;		line 148 in file "mcc_generated_files/tmr1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ADC1_StartConversion
;;		_UpdateTick
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/tmr1.c"
	line	148
global __ptext13
__ptext13:	;psect for function _TMR1_ISR
psect	text13
	file	"mcc_generated_files/tmr1.c"
	line	148
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_ISR: [wreg+status,2+status,0+pclath+cstack]
	line	152
	
i1l1145:	
;tmr1.c: 152: PIR1bits.TMR1IF = 0;
	movlb 0	; select bank0
	bcf	(16),0	;volatile
	line	154
	
i1l1147:	
;tmr1.c: 154: TMR1H = (timer1ReloadVal >> 8) + TMR1H ;
	movf	(_timer1ReloadVal+1),w	;volatile
	addwf	(23),w
	movwf	(23)	;volatile
	line	155
;tmr1.c: 155: TMR1L = timer1ReloadVal + TMR1L;
	movf	(22),w
	addwf	(_timer1ReloadVal),w	;volatile
	movwf	(22)	;volatile
	line	158
	
i1l1149:	
;tmr1.c: 158: UpdateTick();
	fcall	_UpdateTick
	line	161
	
i1l1151:	
;tmr1.c: 161: ADC1_StartConversion(1);
	movlw	low(01h)
	fcall	_ADC1_StartConversion
	line	163
	
i1l148:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
	signat	_TMR1_ISR,88
	global	_UpdateTick

;; *************** function _UpdateTick *****************
;; Defined at:
;;		line 99 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR1_ISR
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"main.c"
	line	99
global __ptext14
__ptext14:	;psect for function _UpdateTick
psect	text14
	file	"main.c"
	line	99
	global	__size_of_UpdateTick
	__size_of_UpdateTick	equ	__end_of_UpdateTick-_UpdateTick
	
_UpdateTick:	
;incstack = 0
	opt	stack 10
; Regs used in _UpdateTick: [wreg+status,2+status,0]
	line	101
	
i1l1131:	
;main.c: 101: timeQuanta++;
	movlw	low(01h)
	movwf	(??_UpdateTick+0)+0
	movf	(??_UpdateTick+0)+0,w
	addwf	(_timeQuanta),f
	line	102
	
i1l1133:	
;main.c: 102: if(timeQuanta > 8)
	movlw	low(09h)
	subwf	(_timeQuanta),w
	skipc
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l277
u39_20:
	line	104
	
i1l1135:	
;main.c: 103: {
;main.c: 104: timeQuanta = 0;
	clrf	(_timeQuanta)
	line	105
	
i1l1137:	
;main.c: 105: tickCounter++;
	movlw	01h
	movlb 0	; select bank0
	addwf	(_tickCounter),f
	movlw	0
	addwfc	(_tickCounter+1),f
	goto	i1l277
	line	106
	
i1l276:	
	line	107
	
i1l277:	
	return
	opt stack 0
GLOBAL	__end_of_UpdateTick
	__end_of_UpdateTick:
	signat	_UpdateTick,88
	global	_ADC1_StartConversion

;; *************** function _ADC1_StartConversion *****************
;; Defined at:
;;		line 93 in file "mcc_generated_files/adc1.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     enum E11828
;; Auto vars:     Size  Location     Type
;;  channel         1    1[COMMON] enum E11828
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR1_ISR
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/adc1.c"
	line	93
global __ptext15
__ptext15:	;psect for function _ADC1_StartConversion
psect	text15
	file	"mcc_generated_files/adc1.c"
	line	93
	global	__size_of_ADC1_StartConversion
	__size_of_ADC1_StartConversion	equ	__end_of_ADC1_StartConversion-_ADC1_StartConversion
	
_ADC1_StartConversion:	
;incstack = 0
	opt	stack 10
; Regs used in _ADC1_StartConversion: [wreg+status,2+status,0]
;ADC1_StartConversion@channel stored from wreg
	movwf	(ADC1_StartConversion@channel)
	line	95
	
i1l715:	
;adc1.c: 95: ADCON0bits.CHS = channel;
	movf	(ADC1_StartConversion@channel),w
	movwf	(??_ADC1_StartConversion+0)+0
	rlf	(??_ADC1_StartConversion+0)+0,f
	rlf	(??_ADC1_StartConversion+0)+0,f
	movlb 1	; select bank1
	movf	(157)^080h,w	;volatile
	xorwf	(??_ADC1_StartConversion+0)+0,w
	andlw	not (((1<<5)-1)<<2)
	xorwf	(??_ADC1_StartConversion+0)+0,w
	movwf	(157)^080h	;volatile
	line	98
	
i1l717:	
;adc1.c: 98: ADCON0bits.ADON = 1;
	bsf	(157)^080h,0	;volatile
	line	101
	
i1l719:	
;adc1.c: 101: ADCON0bits.GO_nDONE = 1;
	bsf	(157)^080h,1	;volatile
	line	102
	
i1l26:	
	return
	opt stack 0
GLOBAL	__end_of_ADC1_StartConversion
	__end_of_ADC1_StartConversion:
	signat	_ADC1_StartConversion,4216
	global	_ADC1_ISR

;; *************** function _ADC1_ISR *****************
;; Defined at:
;;		line 135 in file "mcc_generated_files/adc1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SignalProcessEngine
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	135
global __ptext16
__ptext16:	;psect for function _ADC1_ISR
psect	text16
	file	"mcc_generated_files/adc1.c"
	line	135
	global	__size_of_ADC1_ISR
	__size_of_ADC1_ISR	equ	__end_of_ADC1_ISR-_ADC1_ISR
	
_ADC1_ISR:	
;incstack = 0
	opt	stack 9
; Regs used in _ADC1_ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	137
	
i1l1139:	
;adc1.c: 137: PIR1bits.ADIF = 0;
	movlb 0	; select bank0
	bcf	(16),6	;volatile
	line	140
	
i1l1141:	
;adc1.c: 140: SignalProcessEngine();
	fcall	_SignalProcessEngine
	line	144
	
i1l41:	
	return
	opt stack 0
GLOBAL	__end_of_ADC1_ISR
	__end_of_ADC1_ISR:
	signat	_ADC1_ISR,88
	global	_SignalProcessEngine

;; *************** function _SignalProcessEngine *****************
;; Defined at:
;;		line 117 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dacResult       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0      18       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1      18       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ADC1_GetConversionResult
;;		_DAC1_SetOutput
;; This function is called by:
;;		_ADC1_ISR
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"main.c"
	line	117
global __ptext17
__ptext17:	;psect for function _SignalProcessEngine
psect	text17
	file	"main.c"
	line	117
	global	__size_of_SignalProcessEngine
	__size_of_SignalProcessEngine	equ	__end_of_SignalProcessEngine-_SignalProcessEngine
	
_SignalProcessEngine:	
;incstack = 0
	opt	stack 9
; Regs used in _SignalProcessEngine: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	129
	
i1l1067:	
;main.c: 120: uint8_t dacResult;
;main.c: 128: adcBuffer.pingpongBuffer[adcBuffer.activeBuffer][adcBuffer.activeBufferCurrentPosition] =
;main.c: 129: (ADC1_GetConversionResult() >> 1);
	fcall	_ADC1_GetConversionResult
	movf	(0+?_ADC1_GetConversionResult),w
	movlb 0	; select bank0
	movwf	(??_SignalProcessEngine+0)+0
	movf	(1+?_ADC1_GetConversionResult),w
	movwf	((??_SignalProcessEngine+0)+0+1)
	lsrf	(??_SignalProcessEngine+0)+1,f
	rrf	(??_SignalProcessEngine+0)+0,f
	movlw	low(8668+0101h)
	movwf	fsr1l
	movlw	high(8668+0101h)
	movwf	(fsr1l)+1
	movf	indf1,w
	movwf	(??_SignalProcessEngine+2)+0
	clrf	(??_SignalProcessEngine+2)+0+1
	lslf	(??_SignalProcessEngine+2)+0,f
	rlf	(??_SignalProcessEngine+2)+1,f
	movlw	low(8668+0100h)
	movwf	fsr1l
	movlw	high(8668+0100h)
	movwf	(fsr1l)+1
	movf	indf1,w
	movwf	(??_SignalProcessEngine+4)+0
	clrf	(??_SignalProcessEngine+4)+0+1
	movlw	07h
u34_25:
	lslf	(??_SignalProcessEngine+4)+0,f
	rlf	(??_SignalProcessEngine+4)+1,f
	decfsz	wreg,f
	goto	u34_25
	movlw	low(8668)
	movwf	(??_SignalProcessEngine+6)+0
	movlw	high(8668)
	movwf	(??_SignalProcessEngine+6)+0+1
	movf	0+(??_SignalProcessEngine+4)+0,w
	addwf	0+(??_SignalProcessEngine+6)+0,w
	movwf	(??_SignalProcessEngine+8)+0
	movf	1+(??_SignalProcessEngine+4)+0,w
	addwfc	1+(??_SignalProcessEngine+6)+0,w
	movwf	1+(??_SignalProcessEngine+8)+0
	movf	0+(??_SignalProcessEngine+2)+0,w
	addwf	0+(??_SignalProcessEngine+8)+0,w
	movwf	fsr1l
	movf	1+(??_SignalProcessEngine+2)+0,w
	addwfc	1+(??_SignalProcessEngine+8)+0,w
	movwf	1+fsr1l
	movf	(??_SignalProcessEngine+0)+0,w
	movwi	[0]fsr1
	movf	(??_SignalProcessEngine+0)+1,w
	movwi	[1]fsr1
	line	132
	
i1l1069:	
;main.c: 132: dacResult = (uint8_t)((32768 + dacBuffer.pingpongBuffer[dacBuffer.activeBuffer][dacBuffer.activeBufferCurrentPosition]) >> 8);
	movlw	0
	movwf	((??_SignalProcessEngine+0)+0)
	movlw	080h
	movwf	((??_SignalProcessEngine+0)+0+1)
	movlw	0
	movwf	((??_SignalProcessEngine+0)+0+2)
	movlw	0
	movwf	((??_SignalProcessEngine+0)+0+3)
	movlw	low(8926+0101h)
	movwf	fsr1l
	movlw	high(8926+0101h)
	movwf	(fsr1l)+1
	movf	indf1,w
	movwf	(??_SignalProcessEngine+4)+0
	clrf	(??_SignalProcessEngine+4)+0+1
	lslf	(??_SignalProcessEngine+4)+0,f
	rlf	(??_SignalProcessEngine+4)+1,f
	movlw	low(8926+0100h)
	movwf	fsr1l
	movlw	high(8926+0100h)
	movwf	(fsr1l)+1
	movf	indf1,w
	movwf	(??_SignalProcessEngine+6)+0
	clrf	(??_SignalProcessEngine+6)+0+1
	movlw	07h
u35_25:
	lslf	(??_SignalProcessEngine+6)+0,f
	rlf	(??_SignalProcessEngine+6)+1,f
	decfsz	wreg,f
	goto	u35_25
	movlw	low(8926)
	movwf	(??_SignalProcessEngine+8)+0
	movlw	high(8926)
	movwf	(??_SignalProcessEngine+8)+0+1
	movf	0+(??_SignalProcessEngine+6)+0,w
	addwf	0+(??_SignalProcessEngine+8)+0,w
	movwf	(??_SignalProcessEngine+10)+0
	movf	1+(??_SignalProcessEngine+6)+0,w
	addwfc	1+(??_SignalProcessEngine+8)+0,w
	movwf	1+(??_SignalProcessEngine+10)+0
	movf	0+(??_SignalProcessEngine+10)+0,w
	addwf	0+(??_SignalProcessEngine+4)+0,w
	movwf	fsr0l
	movf	1+(??_SignalProcessEngine+10)+0,w
	addwfc	1+(??_SignalProcessEngine+4)+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	((??_SignalProcessEngine+12)+0)
	moviw	[1]fsr0
	movwf	((??_SignalProcessEngine+12)+0+1)
	clrf	((??_SignalProcessEngine+12)+0+2)
	clrf	((??_SignalProcessEngine+12)+0+3)
	movf	0+(??_SignalProcessEngine+12)+0,w
	addwf	(??_SignalProcessEngine+0)+0,f
	movf	1+(??_SignalProcessEngine+12)+0,w
	addwfc	(??_SignalProcessEngine+0)+1,f
	movf	2+(??_SignalProcessEngine+12)+0,w
	addwfc	(??_SignalProcessEngine+0)+2,f
	movf	3+(??_SignalProcessEngine+12)+0,w
	addwfc	(??_SignalProcessEngine+0)+3,f
	movlw	08h
	movwf	(??_SignalProcessEngine+16)+0
u36_25:
	asrf	(??_SignalProcessEngine+0)+3,f
	rrf	(??_SignalProcessEngine+0)+2,f
	rrf	(??_SignalProcessEngine+0)+1,f
	rrf	(??_SignalProcessEngine+0)+0,f
u36_20:
	decfsz	(??_SignalProcessEngine+16)+0,f
	goto	u36_25
	movf	0+(??_SignalProcessEngine+0)+0,w
	movwf	(??_SignalProcessEngine+17)+0
	movf	(??_SignalProcessEngine+17)+0,w
	movwf	(SignalProcessEngine@dacResult)
	line	133
	
i1l1071:	
;main.c: 133: DAC1_SetOutput(dacResult);
	movf	(SignalProcessEngine@dacResult),w
	fcall	_DAC1_SetOutput
	line	138
	
i1l1073:	
;main.c: 138: adcBuffer.activeBufferCurrentPosition++;
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(??_SignalProcessEngine+0)+0
	movlw	low(8668+0101h)
	movwf	fsr1l
	movlw	high(8668+0101h)
	movwf	(fsr1l)+1
	movf	(??_SignalProcessEngine+0)+0,w
	addwf	indf1,f
	line	139
	
i1l1075:	
;main.c: 139: if(adcBuffer.activeBufferCurrentPosition == 64)
	movlw	low(8668+0101h)
	movwf	fsr1l
	movlw	high(8668+0101h)
	movwf	(fsr1l)+1
		movlw	64
	xorwf	(indf1),w
	btfss	status,2
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l1083
u37_20:
	line	141
	
i1l1077:	
;main.c: 140: {
;main.c: 141: adcBuffer.activeBuffer ^= 0x01;
	movlw	low(01h)
	movwf	(??_SignalProcessEngine+0)+0
	movlw	low(8668+0100h)
	movwf	fsr1l
	movlw	high(8668+0100h)
	movwf	(fsr1l)+1
	movf	(??_SignalProcessEngine+0)+0,w
	xorwf	indf1,f
	line	142
	
i1l1079:	
;main.c: 142: adcBuffer.activeBufferCurrentPosition = 0;
	movlw	low(8668+0101h)
	movwf	fsr1l
	movlw	high(8668+0101h)
	movwf	(fsr1l)+1
	clrf	indf1
	line	147
	
i1l1081:	
;main.c: 147: shouldFilter = 1;
	clrf	(_shouldFilter)
	incf	(_shouldFilter),f
	goto	i1l1083
	line	150
	
i1l280:	
	line	155
	
i1l1083:	
;main.c: 150: }
;main.c: 155: dacBuffer.activeBufferCurrentPosition++;
	movlw	low(01h)
	movwf	(??_SignalProcessEngine+0)+0
	movlw	low(8926+0101h)
	movwf	fsr1l
	movlw	high(8926+0101h)
	movwf	(fsr1l)+1
	movf	(??_SignalProcessEngine+0)+0,w
	addwf	indf1,f
	line	156
	
i1l1085:	
;main.c: 156: if(dacBuffer.activeBufferCurrentPosition == 64)
	movlw	low(8926+0101h)
	movwf	fsr1l
	movlw	high(8926+0101h)
	movwf	(fsr1l)+1
		movlw	64
	xorwf	(indf1),w
	btfss	status,2
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l282
u38_20:
	line	158
	
i1l1087:	
;main.c: 157: {
;main.c: 158: dacBuffer.activeBuffer ^= 0x01;
	movlw	low(01h)
	movwf	(??_SignalProcessEngine+0)+0
	movlw	low(8926+0100h)
	movwf	fsr1l
	movlw	high(8926+0100h)
	movwf	(fsr1l)+1
	movf	(??_SignalProcessEngine+0)+0,w
	xorwf	indf1,f
	line	159
	
i1l1089:	
;main.c: 159: dacBuffer.activeBufferCurrentPosition = 0;
	movlw	low(8926+0101h)
	movwf	fsr1l
	movlw	high(8926+0101h)
	movwf	(fsr1l)+1
	clrf	indf1
	goto	i1l282
	line	161
	
i1l281:	
	line	164
	
i1l282:	
	return
	opt stack 0
GLOBAL	__end_of_SignalProcessEngine
	__end_of_SignalProcessEngine:
	signat	_SignalProcessEngine,88
	global	_DAC1_SetOutput

;; *************** function _DAC1_SetOutput *****************
;; Defined at:
;;		line 72 in file "mcc_generated_files/dac1.c"
;; Parameters:    Size  Location     Type
;;  inputData       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  inputData       1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SignalProcessEngine
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/dac1.c"
	line	72
global __ptext18
__ptext18:	;psect for function _DAC1_SetOutput
psect	text18
	file	"mcc_generated_files/dac1.c"
	line	72
	global	__size_of_DAC1_SetOutput
	__size_of_DAC1_SetOutput	equ	__end_of_DAC1_SetOutput-_DAC1_SetOutput
	
_DAC1_SetOutput:	
;incstack = 0
	opt	stack 9
; Regs used in _DAC1_SetOutput: [wreg]
;DAC1_SetOutput@inputData stored from wreg
	movwf	(DAC1_SetOutput@inputData)
	line	73
	
i1l1055:	
;dac1.c: 73: DAC1CON1 = inputData;
	movf	(DAC1_SetOutput@inputData),w
	movlb 2	; select bank2
	movwf	(281)^0100h	;volatile
	line	74
	
i1l220:	
	return
	opt stack 0
GLOBAL	__end_of_DAC1_SetOutput
	__end_of_DAC1_SetOutput:
	signat	_DAC1_SetOutput,4216
	global	_ADC1_GetConversionResult

;; *************** function _ADC1_GetConversionResult *****************
;; Defined at:
;;		line 109 in file "mcc_generated_files/adc1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SignalProcessEngine
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"mcc_generated_files/adc1.c"
	line	109
global __ptext19
__ptext19:	;psect for function _ADC1_GetConversionResult
psect	text19
	file	"mcc_generated_files/adc1.c"
	line	109
	global	__size_of_ADC1_GetConversionResult
	__size_of_ADC1_GetConversionResult	equ	__end_of_ADC1_GetConversionResult-_ADC1_GetConversionResult
	
_ADC1_GetConversionResult:	
;incstack = 0
	opt	stack 9
; Regs used in _ADC1_GetConversionResult: [wreg]
	line	111
	
i1l1049:	
;adc1.c: 111: return ((ADRESH << 8) + ADRESL);
	movlb 1	; select bank1
	movf	(156)^080h,w	;volatile
	movwf	(?_ADC1_GetConversionResult+1)
	movf	(155)^080h,w	;volatile
	movwf	(?_ADC1_GetConversionResult)
	goto	i1l32
	
i1l1051:	
	line	112
	
i1l32:	
	return
	opt stack 0
GLOBAL	__end_of_ADC1_GetConversionResult
	__end_of_ADC1_GetConversionResult:
	signat	_ADC1_GetConversionResult,90
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	int$flags
	int$flags	set btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
global __pbssBIGRAM
__pbssBIGRAM	equ	8668
	end
