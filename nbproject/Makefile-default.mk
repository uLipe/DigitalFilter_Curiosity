#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/adc1.c mcc_generated_files/pin_manager.c mcc_generated_files/mcc.c mcc_generated_files/tmr1.c mcc_generated_files/mathacc.c mcc_generated_files/dac1.c mcc_generated_files/interrupt_manager.c main.c digitalfilter_2nd_ord.c mcc_generated_files/newpic_8b_asm_func.asm

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/adc1.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/mathacc.p1 ${OBJECTDIR}/mcc_generated_files/dac1.p1 ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/digitalfilter_2nd_ord.p1 ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/adc1.p1.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d ${OBJECTDIR}/mcc_generated_files/mathacc.p1.d ${OBJECTDIR}/mcc_generated_files/dac1.p1.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/digitalfilter_2nd_ord.p1.d ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/adc1.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/mathacc.p1 ${OBJECTDIR}/mcc_generated_files/dac1.p1 ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/digitalfilter_2nd_ord.p1 ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj

# Source Files
SOURCEFILES=mcc_generated_files/adc1.c mcc_generated_files/pin_manager.c mcc_generated_files/mcc.c mcc_generated_files/tmr1.c mcc_generated_files/mathacc.c mcc_generated_files/dac1.c mcc_generated_files/interrupt_manager.c main.c digitalfilter_2nd_ord.c mcc_generated_files/newpic_8b_asm_func.asm


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F1619
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/adc1.p1: mcc_generated_files/adc1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/adc1.p1  mcc_generated_files/adc1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adc1.d ${OBJECTDIR}/mcc_generated_files/adc1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adc1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/pin_manager.p1  mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/mcc.p1  mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr1.p1: mcc_generated_files/tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/tmr1.p1  mcc_generated_files/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr1.d ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mathacc.p1: mcc_generated_files/mathacc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mathacc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mathacc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/mathacc.p1  mcc_generated_files/mathacc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mathacc.d ${OBJECTDIR}/mcc_generated_files/mathacc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mathacc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/dac1.p1: mcc_generated_files/dac1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dac1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dac1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/dac1.p1  mcc_generated_files/dac1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/dac1.d ${OBJECTDIR}/mcc_generated_files/dac1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/dac1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1  mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/digitalfilter_2nd_ord.p1: digitalfilter_2nd_ord.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/digitalfilter_2nd_ord.p1.d 
	@${RM} ${OBJECTDIR}/digitalfilter_2nd_ord.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/digitalfilter_2nd_ord.p1  digitalfilter_2nd_ord.c 
	@-${MV} ${OBJECTDIR}/digitalfilter_2nd_ord.d ${OBJECTDIR}/digitalfilter_2nd_ord.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/digitalfilter_2nd_ord.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/mcc_generated_files/adc1.p1: mcc_generated_files/adc1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/adc1.p1  mcc_generated_files/adc1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adc1.d ${OBJECTDIR}/mcc_generated_files/adc1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adc1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/pin_manager.p1  mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/mcc.p1  mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr1.p1: mcc_generated_files/tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/tmr1.p1  mcc_generated_files/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr1.d ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mathacc.p1: mcc_generated_files/mathacc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mathacc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mathacc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/mathacc.p1  mcc_generated_files/mathacc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mathacc.d ${OBJECTDIR}/mcc_generated_files/mathacc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mathacc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/dac1.p1: mcc_generated_files/dac1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dac1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dac1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/dac1.p1  mcc_generated_files/dac1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/dac1.d ${OBJECTDIR}/mcc_generated_files/dac1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/dac1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1  mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/digitalfilter_2nd_ord.p1: digitalfilter_2nd_ord.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/digitalfilter_2nd_ord.p1.d 
	@${RM} ${OBJECTDIR}/digitalfilter_2nd_ord.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/digitalfilter_2nd_ord.p1  digitalfilter_2nd_ord.c 
	@-${MV} ${OBJECTDIR}/digitalfilter_2nd_ord.d ${OBJECTDIR}/digitalfilter_2nd_ord.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/digitalfilter_2nd_ord.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj: mcc_generated_files/newpic_8b_asm_func.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj  mcc_generated_files/newpic_8b_asm_func.asm 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.d ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj: mcc_generated_files/newpic_8b_asm_func.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj  mcc_generated_files/newpic_8b_asm_func.asm 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.d ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/newpic_8b_asm_func.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"       --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.map  --double=24 --float=24 --opt=default,+asm,+asmfile,+speed,-space,+debug --addrqual=ignore --mode=pro -P -N255 --warn=-3 --asmlist --summary=default,+psect,+class,+mem,-hex,+file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/DigitalFilter_Curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
