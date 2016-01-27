
	; Microchip MPLAB XC8 C Compiler V1.35
	; Copyright (C) 1984-2015 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=16F1619 -G \
	; -mdist/default/production/DigitalFilter_Curiosity.X.production.map \
	; --double=24 --float=24 \
	; --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore \
	; --mode=pro -P -N255 --warn=-3 --asmlist \
	; --summary=default,+psect,+class,+mem,-hex,+file \
	; --output=default,-inhx032 \
	; --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib \
	; --output=-mcof,+elf:multilocs --stack=compiled:auto:auto \
	; --errformat=%f:%l: error: (%n) %s \
	; --warnformat=%f:%l: warning: (%n) %s \
	; --msgformat=%f:%l: advisory: (%n) %s --summary=+xml \
	; --summarydir=dist/default/production/memoryfile.xml \
	; -odist/default/production/DigitalFilter_Curiosity.X.production.elf \
	; build/default/production/mcc_generated_files/adc1.p1 \
	; build/default/production/mcc_generated_files/pin_manager.p1 \
	; build/default/production/mcc_generated_files/mcc.p1 \
	; build/default/production/mcc_generated_files/tmr1.p1 \
	; build/default/production/mcc_generated_files/mathacc.p1 \
	; build/default/production/mcc_generated_files/dac1.p1 \
	; build/default/production/mcc_generated_files/interrupt_manager.p1 \
	; build/default/production/main.p1 \
	; build/default/production/digitalfilter_2nd_ord.p1 \
	; build/default/production/mcc_generated_files/newpic_8b_asm_func.obj
	;


	processor	16F1619

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	BSR	equ	8
	PCLATH	equ	0Ah
	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	strings,class=CODE,delta=2,reloc=256
	psect	intentry,class=CODE,delta=2
	psect	functab,class=CODE,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	INDF0	set	0
	INDF1	set	1
	PCL	set	2
	STATUS	set	3
	FSR0L	set	4
	FSR0H	set	5
	FSR1L	set	6
	FSR1H	set	7
	BSR	set	8
	WREG	set	9
	PCLATH	set	10
	INTCON	set	11

	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	ljmp	start


	psect	init
start

;Initialize the stack pointer (FSR1)
;Stack space: 0203Eh-021DBh (414 bytes)

	fsr1l	equ	6
	fsr1h	equ	7
	global stacklo, stackhi
	stacklo	equ	0203Eh
	stackhi	equ	021DBh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:

	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG1 @ 0x8007
;	Clock Out Enable
;	CLKOUTEN = OFF, CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin
;	Power-up Timer Enable
;	PWRTE = OFF, PWRT disabled
;	Flash Program Memory Code Protection
;	CP = OFF, Program memory code protection is disabled
;	Brown-out Reset Enable
;	BOREN = ON, Brown-out Reset enabled
;	Fail-Safe Clock Monitor Enable
;	FCMEN = ON, Fail-Safe Clock Monitor is enabled
;	MCLR Pin Function Select
;	MCLRE = OFF, MCLR/VPP pin function is digital input
;	Internal/External Switch Over
;	IESO = ON, Internal External Switch Over mode is enabled
;	Oscillator Selection Bits
;	FOSC = INTOSC, INTOSC oscillator: I/O function on CLKIN pin

	psect	config
		org 0x0
		dw 0x3FBC

; Config register CONFIG2 @ 0x8008
;	Peripheral Pin Select one-way control
;	PPS1WAY = OFF, The PPSLOCK bit can be set and cleared repeatedly by software
;	Stack Overflow/Underflow Reset Enable
;	STVREN = ON, Stack Overflow or Underflow will cause a Reset
;	Low-Power Brown Out Reset
;	LPBOR = OFF, Low-Power BOR is disabled
;	Brown-out Reset Voltage Selection
;	BORV = LO, Brown-out Reset Voltage (Vbor), low trip point selected.
;	Low-Voltage Programming Enable
;	LVP = ON, Low-voltage programming enabled
;	Zero Cross Detect Disable Bit
;	ZCD = OFF, ZCD disable.  ZCD can be enabled by setting the ZCDSEN bit of ZCDCON
;	Flash Memory Self-Write Protection
;	WRT = OFF, Write protection off
;	PLL Enable Bit
;	PLLEN = OFF, 4x PLL is enabled when software sets the SPLLEN bit

	psect	config
		org 0x1
		dw 0x3EFB

; Config register CONFIG3 @ 0x8009
;	Watchdog Timer Enable
;	WDTE = OFF, WDT disabled
;	WDT Period Select
;	WDTCPS = WDTCPS1F, Software Control (WDTPS)
;	WDT Input Clock Selector
;	WDTCCS = SWC, Software control, controlled by WDTCS bits
;	WDT Window Select
;	WDTCWS = WDTCWSSW, Software WDT window size control (WDTWS bits)

	psect	config
		org 0x2
		dw 0x3F9F


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect bank4,class=BANK4,space=1
psect bank5,class=BANK5,space=1
psect bank6,class=BANK6,space=1
psect bank7,class=BANK7,space=1
psect bank8,class=BANK8,space=1
psect bank9,class=BANK9,space=1
psect bank10,class=BANK10,space=1
psect bank11,class=BANK11,space=1
psect bank12,class=BANK12,space=1
psect bank13,class=BANK13,space=1
psect bank14,class=BANK14,space=1
psect bank15,class=BANK15,space=1
psect bank16,class=BANK16,space=1
psect bank17,class=BANK17,space=1
psect bank18,class=BANK18,space=1
psect bank19,class=BANK19,space=1
psect bank20,class=BANK20,space=1
psect bank21,class=BANK21,space=1
psect bank22,class=BANK22,space=1
psect bank23,class=BANK23,space=1
psect bank24,class=BANK24,space=1
psect bank25,class=BANK25,space=1
psect bank26,class=BANK26,space=1
psect bank27,class=BANK27,space=1
psect bank28,class=BANK28,space=1
psect bank29,class=BANK29,space=1
psect bank30,class=BANK30,space=1
psect bank31,class=BANK31,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1
psect sfr4,class=SFR4,space=1
psect sfr5,class=SFR5,space=1
psect sfr6,class=SFR6,space=1
psect sfr7,class=SFR7,space=1
psect sfr8,class=SFR8,space=1
psect sfr9,class=SFR9,space=1
psect sfr10,class=SFR10,space=1
psect sfr11,class=SFR11,space=1
psect sfr12,class=SFR12,space=1
psect sfr13,class=SFR13,space=1
psect sfr14,class=SFR14,space=1
psect sfr15,class=SFR15,space=1
psect sfr16,class=SFR16,space=1
psect sfr17,class=SFR17,space=1
psect sfr18,class=SFR18,space=1
psect sfr19,class=SFR19,space=1
psect sfr20,class=SFR20,space=1
psect sfr21,class=SFR21,space=1
psect sfr22,class=SFR22,space=1
psect sfr23,class=SFR23,space=1
psect sfr24,class=SFR24,space=1
psect sfr25,class=SFR25,space=1
psect sfr26,class=SFR26,space=1
psect sfr27,class=SFR27,space=1
psect sfr28,class=SFR28,space=1
psect sfr29,class=SFR29,space=1
psect sfr30,class=SFR30,space=1
psect sfr31,class=SFR31,space=1


	end	start
