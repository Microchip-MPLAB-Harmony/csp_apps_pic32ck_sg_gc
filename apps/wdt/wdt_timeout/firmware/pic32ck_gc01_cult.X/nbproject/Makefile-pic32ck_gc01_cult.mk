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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/initialization.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/peripheral/systick/plib_systick.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c ../src/main.c ../src/config/pic32ck_gc01_cult/peripheral/wdt/plib_wdt.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/2000113765/initialization.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/1971382453/plib_systick.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1392171304/plib_wdt.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/207439552/plib_port.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d ${OBJECTDIR}/_ext/44908540/plib_pm.o.d ${OBJECTDIR}/_ext/2000113765/initialization.o.d ${OBJECTDIR}/_ext/2000113765/interrupts.o.d ${OBJECTDIR}/_ext/1971382453/plib_systick.o.d ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d ${OBJECTDIR}/_ext/2000113765/exceptions.o.d ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1392171304/plib_wdt.o.d ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d ${OBJECTDIR}/_ext/207439552/plib_port.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/2000113765/initialization.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/1971382453/plib_systick.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1392171304/plib_wdt.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/207439552/plib_port.o

# Source Files
SOURCEFILES=../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/initialization.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/peripheral/systick/plib_systick.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c ../src/main.c ../src/config/pic32ck_gc01_cult/peripheral/wdt/plib_wdt.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c

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
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/4023bcb5458f3ac7b1b11be83c8f1a162ffa4a2d .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/pic32ck_gc01_cult/cb718263877a3ab7d2bc304c2b3fda13f58c57c6 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1641476138" 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/a8611cfced32b151d79441d580e74535f072c8bf .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/dde7df83d25469554c2a1bb0b552d5d65bd754bb .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/e3841b74079f6b6daeb41b94fb02273c1b3dedb4 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/b7df104f3c625a836ebe74aae3e7a1ed1c04a76c .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/f11b16e62e4a8d678dfc83d5cc17335b6cc5e588 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1971382453/plib_systick.o: ../src/config/pic32ck_gc01_cult/peripheral/systick/plib_systick.c  .generated_files/flags/pic32ck_gc01_cult/7dfdd3c301d1aeb4d14b30f256fdea311e6ea79d .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1971382453" 
	@${RM} ${OBJECTDIR}/_ext/1971382453/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1971382453/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1971382453/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1971382453/plib_systick.o ../src/config/pic32ck_gc01_cult/peripheral/systick/plib_systick.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/baf4e5f03c40469725a219c803b70cee3b156a97 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/b85410ed4212cf5e29c4930b41c94cf9eaf2a50e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/84982b09d0a58769e01ea913773ba82cf13e2f82 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/a121eedc65235e04aaaddcff5063c653f2d30bf9 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1392171304/plib_wdt.o: ../src/config/pic32ck_gc01_cult/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32ck_gc01_cult/944aa21ea58e4aea01ae1da81fd698dfd8a4b0b2 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1392171304" 
	@${RM} ${OBJECTDIR}/_ext/1392171304/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1392171304/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1392171304/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1392171304/plib_wdt.o ../src/config/pic32ck_gc01_cult/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/4d7e6f0a5ed65dff49f893dd7da348279955ed4a .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/cdd56bffbc924aed5bb55237fac2db5eef520d73 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/cfa6b0bb71eb7655a1311e983e0bb9b851eda66 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/c05040cf1d279d46bc1fcf745f491005283cf743 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/pic32ck_gc01_cult/7ec08c76b924b6906fbf2124b0550296b88bb7d9 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1641476138" 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/e4d42a0ded367748e9ba869835180151cbf98519 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/b9419a2b99ced59242217f54dcfd40cf769a9cdc .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/6ea4a388336395f1480babc7435f54b147f76024 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/c2fb75a3fc499053d85abf50eec1fccc29707fc7 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/262c121d0980b5a786714f46a2a4d1222dfa2c7a .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1971382453/plib_systick.o: ../src/config/pic32ck_gc01_cult/peripheral/systick/plib_systick.c  .generated_files/flags/pic32ck_gc01_cult/bca9be3c7a2e27b3c347495a6ea2422ab43bdc7 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1971382453" 
	@${RM} ${OBJECTDIR}/_ext/1971382453/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1971382453/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1971382453/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1971382453/plib_systick.o ../src/config/pic32ck_gc01_cult/peripheral/systick/plib_systick.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/8e44cbd6d9575bf8f53b6c8edfbe54d54680fb9a .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/507c7d5a846195962ef730bd01943356a892c9f6 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/8eed71a95b1fc7966f8e538b6d8af125aaddc3a9 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/97cac12806496a8ffb8fd0b0fd85316537ef68f1 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1392171304/plib_wdt.o: ../src/config/pic32ck_gc01_cult/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32ck_gc01_cult/da31d78c2c55c8718ed67a4d93f03f10bf0f386e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1392171304" 
	@${RM} ${OBJECTDIR}/_ext/1392171304/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1392171304/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1392171304/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1392171304/plib_wdt.o ../src/config/pic32ck_gc01_cult/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/784da7c6992634d3b74837fe9383bbe71f191a0f .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/c974781786d6bdd6d7d08d3830b1490b0c3b9bbf .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/80f32af7a3b226e95c8b4a78fecc2f51f6efcfdd .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
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
