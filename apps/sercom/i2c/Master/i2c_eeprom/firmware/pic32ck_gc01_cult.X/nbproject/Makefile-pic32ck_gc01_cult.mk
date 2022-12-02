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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c ../src/config/pic32ck_gc01_cult/peripheral/sercom/i2c_master/plib_sercom4_i2c_master.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/initialization.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/207439552/plib_port.o ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/2000113765/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2123560367/plib_clock.o.d ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d ${OBJECTDIR}/_ext/44908540/plib_pm.o.d ${OBJECTDIR}/_ext/207439552/plib_port.o.d ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o.d ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d ${OBJECTDIR}/_ext/2000113765/exceptions.o.d ${OBJECTDIR}/_ext/2000113765/interrupts.o.d ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d ${OBJECTDIR}/_ext/2000113765/initialization.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/207439552/plib_port.o ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/2000113765/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c ../src/config/pic32ck_gc01_cult/peripheral/sercom/i2c_master/plib_sercom4_i2c_master.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/initialization.c ../src/main.c

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
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/47b6335db36aaf4d1cc1e0045c547014eff45366 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/3af9556f7b46c82341abaf26f3a37567ceac2f5c .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/5d55e9ebaff03c1714eed20beb8cc91b7e540518 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/9420526c532f409198039bad7b6149cde25f7eeb .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/d157236bb9776563caf6b3af4844ed965dbf0ade .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/f82727182d78854a95f6b132dccdce96882ad7c3 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/i2c_master/plib_sercom4_i2c_master.c  .generated_files/flags/pic32ck_gc01_cult/8fba8d97110cdb14eecab216bc5f0d1946811aee .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664426122" 
	@${RM} ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/i2c_master/plib_sercom4_i2c_master.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/238f1da8759f46df55fa0549e7ffd801238e195b .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/2fef1c0f18292babcbd56c03b3d0820fae54bbdb .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/d2a4878bed53a67c18f0b08c1b28fc7d6c7c129a .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/3e2e581bdc39ab0675162b62fca2a9284ffc7fda .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/f65a575cce1b8806f1849ab86df0445e6e63031e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/a97a8e3ac76c0a54995794fb388590024eeb8c0e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/f3c0618b8c3a34014f265e829cb5f75dfa02af8 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/87ead308d1f8e9279f3093cca4439c61bd0a7a42 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/b6e340e76b0e5e84a87a0fcf779cf80ff325f40f .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/98ee3ac85d6743786b0226180894fa445cc0f73e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/2b631590907376a4f34697869e8664198ddb1e7f .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/641e49af81f7c7804cf2daec9ea1bc607bbefb52 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/7f957c42fcee48b049c1d022fa9b1ff4c7908f10 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/i2c_master/plib_sercom4_i2c_master.c  .generated_files/flags/pic32ck_gc01_cult/e580da848676ccaf46226e8b309ce77ef487daff .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664426122" 
	@${RM} ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1664426122/plib_sercom4_i2c_master.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/i2c_master/plib_sercom4_i2c_master.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/44690b30aa583cc8980ce3dd7049adafd698e07b .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/d0571a6d5bcb03f232c5ecd506637a98be5c75d9 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/311eb0f4acdebee4dca8023b20f45af91a655cc8 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/bcff27ca8e73d313a08f66a36b9ca8876fb8b9b8 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/cb0aae3f4f46855eb563e726709c9f00cc4ad947 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/cd4920f45244cbc96dc52748258c54f3291f9371 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/7d914115729f34e4e9b91b7dda3dc84f0a362371 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
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
