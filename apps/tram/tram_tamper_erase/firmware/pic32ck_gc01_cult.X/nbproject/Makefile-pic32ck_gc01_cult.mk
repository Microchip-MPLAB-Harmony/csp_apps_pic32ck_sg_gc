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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c ../src/main.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/peripheral/rtc/plib_rtc_timer.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c ../src/config/pic32ck_gc01_cult/peripheral/tram/plib_tram.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/initialization.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/207439552/plib_port.o ${OBJECTDIR}/_ext/207561065/plib_tram.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/2000113765/initialization.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/44908540/plib_pm.o.d ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/2000113765/exceptions.o.d ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d ${OBJECTDIR}/_ext/207439552/plib_port.o.d ${OBJECTDIR}/_ext/207561065/plib_tram.o.d ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d ${OBJECTDIR}/_ext/2000113765/interrupts.o.d ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d ${OBJECTDIR}/_ext/2000113765/initialization.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/207439552/plib_port.o ${OBJECTDIR}/_ext/207561065/plib_tram.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/2000113765/initialization.o

# Source Files
SOURCEFILES=../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c ../src/main.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/peripheral/rtc/plib_rtc_timer.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c ../src/config/pic32ck_gc01_cult/peripheral/tram/plib_tram.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/initialization.c

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
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/7b5c8fe2dcf7bde2495a5463b6743fed188c490b .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/pic32ck_gc01_cult/a376e71c9d717d2dfaa8fc74bcd9c44b0d7e1b80 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1641476138" 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/fc7c1851b7383a16ecc7f1260a005d6a215508d7 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/f08152a9171bc0e9e1038638bc00f15360f7d75c .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o: ../src/config/pic32ck_gc01_cult/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/pic32ck_gc01_cult/9dc6d0cbacd3680b09e8ea8b10622497b832dcda .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1392166978" 
	@${RM} ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o ../src/config/pic32ck_gc01_cult/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/5782f0632a488cfffc5dee6154bdd553c33396ef .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/b157f00f908453d1d2891d346d19032a1dd350a3 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/a9801720d50417287008df74e8a945d81a5a0f80 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/5de69228b98df831533ae35a0cc1d6e037a07ed8 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207561065/plib_tram.o: ../src/config/pic32ck_gc01_cult/peripheral/tram/plib_tram.c  .generated_files/flags/pic32ck_gc01_cult/638dc8e6caf84a93dc361da3748ff8d12c3f1325 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207561065" 
	@${RM} ${OBJECTDIR}/_ext/207561065/plib_tram.o.d 
	@${RM} ${OBJECTDIR}/_ext/207561065/plib_tram.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207561065/plib_tram.o.d" -o ${OBJECTDIR}/_ext/207561065/plib_tram.o ../src/config/pic32ck_gc01_cult/peripheral/tram/plib_tram.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/be62ad2eac3e06b488fc026d62b4d38287c5c84a .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/a7f2808f92ad476ef21c9c359209f48601f547e5 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/d61c4a804bb578c0d80660d2181bb668c910ac84 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/adb887a805d6f895360e495c5091dfd9ff01cfdc .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/38ac386e5b44dbe851e37ff1defd7e8f478fc9be .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/d929b2f3d71a383df21afcf803a5492155db45f4 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/d39297b0d3e78e07db5856624902cc6453b43c38 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/pic32ck_gc01_cult/726bdbcd45f97453c56e7c405f0d1d27fefa3c38 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1641476138" 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/1641476138/plib_sercom5_usart.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/35553ac5c643a36b1804ecec782d487dd8571108 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/a94a969a0ec01b0e0fca52f5deeaba3e9b5eddde .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o: ../src/config/pic32ck_gc01_cult/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/pic32ck_gc01_cult/60fddb896b8bf6e5999aedb49cf69d7efcefb488 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1392166978" 
	@${RM} ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/1392166978/plib_rtc_timer.o ../src/config/pic32ck_gc01_cult/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/2336ce41c0fb91ee8be226eaa1eac36b7b3cd1c0 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/d24c58e598473f578e51cb03c0cae2b3dad48bd7 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/a0f904a848506ab5bf2100f35e8c1f6038f08a33 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/2b8ec32b457fb251a03e990a06a64f210c1ce1b0 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207561065/plib_tram.o: ../src/config/pic32ck_gc01_cult/peripheral/tram/plib_tram.c  .generated_files/flags/pic32ck_gc01_cult/c5923b46a0066f6d95fd8d660f8a40732c55a5dc .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207561065" 
	@${RM} ${OBJECTDIR}/_ext/207561065/plib_tram.o.d 
	@${RM} ${OBJECTDIR}/_ext/207561065/plib_tram.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207561065/plib_tram.o.d" -o ${OBJECTDIR}/_ext/207561065/plib_tram.o ../src/config/pic32ck_gc01_cult/peripheral/tram/plib_tram.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/9d4d3bac73c587f2cb11cae57274732ddbcf5979 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/421c76bab4a902b29b53ada5f4f8fab2acbba88 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/3e5d1e1090ed9b67c72ea7349e4585e4b4c59300 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/b5339a2dc6d58d5cbb691dc142362915a8309189 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/1537870ea80eea3f586dec69a82f773634ea1696 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/3a804353e96ee687bcde3f0ab44baf746b7caac8 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
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
