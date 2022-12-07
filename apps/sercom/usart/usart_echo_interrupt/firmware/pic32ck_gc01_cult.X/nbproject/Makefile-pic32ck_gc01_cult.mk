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
ifeq "$(wildcard nbproject/Makefile-local-pic32ck_gc01_cult.mk)" "nbproject/Makefile-local-pic32ck_gc01_cult.mk"
include nbproject/Makefile-local-pic32ck_gc01_cult.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32ck_gc01_cult
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32ck_gc01_cult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32ck_gc01_cult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/initialization.c ../src/main.c ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/207439552/plib_port.o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/2000113765/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2123560367/plib_clock.o.d ${OBJECTDIR}/_ext/2000113765/exceptions.o.d ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d ${OBJECTDIR}/_ext/207439552/plib_port.o.d ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d ${OBJECTDIR}/_ext/2000113765/initialization.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d ${OBJECTDIR}/_ext/2000113765/interrupts.o.d ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d ${OBJECTDIR}/_ext/44908540/plib_pm.o.d ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/207439552/plib_port.o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/2000113765/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o

# Source Files
SOURCEFILES=../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/initialization.c ../src/main.c ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-pic32ck_gc01_cult.mk ${DISTDIR}/pic32ck_gc01_cult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32CK2051GC01144
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32ck_gc01_cult\PIC32CK2051GC01144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/e0201834d947076e2415562f17f59b0d74c3ba9b .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/a93fb02dc1da1ebfbad175abdf5125cabc08a80e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/1db11196c29472ec25ae946275b2ab0812d63977 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/b648ea7870b848384a2392544fd1b0a044a39e46 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/443d55175fb96ea488834cce83096e375fe78949 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/acf9d583e6fb7ba45f01abba6cf177abefad8a9d .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/100b19a5a38f86bea5f1e412680899f15db20596 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/a2c0dd0af1debb7188c70ba7a317a799bfc27e87 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/pic32ck_gc01_cult/f71e5d187516528d896bbbcf34f33538143793cd .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1641476138" 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/4b6b71e750e7fd82f2432f0695a978fd98bb9084 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/8fc09704e8d649684161af51fb213a285f8d1726 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/4eb7fdd3528d205b058d901dcde2b524da60f1b5 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/8242e4a285dceeb77df0836ab8e6217013b8754d .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/8777a0d123ebf1db9ae92029cb77057cd93cbf79 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/29785c36b8846db2ae7acb7ebe8fea26d11b2287 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/1a4896b94671277c88912fcbb52751525e4e8305 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/3574759cbb9e45dbc160212d3147cc82f0d693ec .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/56eb54b2d8c57c33f1976325836cc90faee8f260 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/c841bb8b7a05a196635a25861ee3adc32b3f2b4 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/e8a3ab0f5c59733bf70a14cdf863bed713c62f63 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/f2324fc0075c0bd16fff19331eb9889031b58c09 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/e6ebd4c20d8cd5beabf3eab27afb84163841a9bc .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/pic32ck_gc01_cult/524d8c6a029db06fc2a5a5ffe5f960c92abae860 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1641476138" 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/3850eae031db1b64948702e957f3f8a4e837f674 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/bf80d0dd570f959bfb02da064a21b2bc0d9ff589 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/3bd3cc948a40abc257b3c018c78c2e1f5b9152eb .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/82701bf744282ac98d6283efc27e8cc191169f62 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/68633a5dfab47bd37357b34ce969325911158276 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32ck_gc01_cult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32ck_gc01_cult/PIC32CK2051GC01144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/pic32ck_gc01_cult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/PIC32CK-GC01"
	
else
${DISTDIR}/pic32ck_gc01_cult.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32ck_gc01_cult/PIC32CK2051GC01144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/pic32ck_gc01_cult.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/PIC32CK-GC01"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pic32ck_gc01_cult.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
