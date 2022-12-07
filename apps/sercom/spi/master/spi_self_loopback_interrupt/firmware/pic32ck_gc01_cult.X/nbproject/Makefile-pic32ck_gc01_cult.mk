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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32ck_gc01_cult/peripheral/sercom/spi_master/plib_sercom2_spi_master.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c ../src/config/pic32ck_gc01_cult/initialization.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/207439552/plib_port.o ${OBJECTDIR}/_ext/2000113765/initialization.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o.d ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d ${OBJECTDIR}/_ext/2000113765/interrupts.o.d ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d ${OBJECTDIR}/_ext/44908540/plib_pm.o.d ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d ${OBJECTDIR}/_ext/2000113765/exceptions.o.d ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d ${OBJECTDIR}/_ext/207439552/plib_port.o.d ${OBJECTDIR}/_ext/2000113765/initialization.o.d ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ${OBJECTDIR}/_ext/2000113765/interrupts.o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ${OBJECTDIR}/_ext/44908540/plib_pm.o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ${OBJECTDIR}/_ext/2000113765/exceptions.o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ${OBJECTDIR}/_ext/207439552/plib_port.o ${OBJECTDIR}/_ext/2000113765/initialization.o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/pic32ck_gc01_cult/peripheral/sercom/spi_master/plib_sercom2_spi_master.c ../src/config/pic32ck_gc01_cult/startup_xc32.c ../src/config/pic32ck_gc01_cult/interrupts.c ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c ../src/config/pic32ck_gc01_cult/exceptions.c ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c ../src/config/pic32ck_gc01_cult/initialization.c ../src/config/pic32ck_gc01_cult/libc_syscalls.c ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c ../src/main.c

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
${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/spi_master/plib_sercom2_spi_master.c  .generated_files/flags/pic32ck_gc01_cult/f4ec16a38d1bec8be664273d2032ecf686a4adca .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2139306532" 
	@${RM} ${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o.d" -o ${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/spi_master/plib_sercom2_spi_master.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/33307da0ff27b484c9ece440e251a1dfc39fdaa3 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/f219336c478a43d42739c168587f6e1ce120202d .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/79795a8d9031299b4f9d9e242f9d7d85272b50e0 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/1e307adbfe32a666134689a376b24900ce6563ba .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/c03c7b2a9e625891ddd1b8e024b77f6f2976bb18 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/e4a1f114872452076400b7e1617919c96a294d4b .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/b51544a75f8733fa5ca27be97651e765df78cadb .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/148dfe7572938d7889c55c1dd0a54fabeb790f3f .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/b2591bc463f69100e732ffa502e784abef94fcbc .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/24512617d77bc938c0255c5914421f96e7edeae3 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/a59bcc6ac0deca878ccb22256a5380f45dbcc391 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/15c936d66c16316758f2266133bb84f8e10b5b95 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/d0eeb09a8ebab030474e49abb99791bd2f427991 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o: ../src/config/pic32ck_gc01_cult/peripheral/sercom/spi_master/plib_sercom2_spi_master.c  .generated_files/flags/pic32ck_gc01_cult/f2b3bfe2d2440d5c4b2eac1f023b75e044b8e874 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2139306532" 
	@${RM} ${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o.d" -o ${OBJECTDIR}/_ext/2139306532/plib_sercom2_spi_master.o ../src/config/pic32ck_gc01_cult/peripheral/sercom/spi_master/plib_sercom2_spi_master.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/startup_xc32.o: ../src/config/pic32ck_gc01_cult/startup_xc32.c  .generated_files/flags/pic32ck_gc01_cult/5d018bcc479578d32e70ea911548e319f678b726 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/2000113765/startup_xc32.o ../src/config/pic32ck_gc01_cult/startup_xc32.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/interrupts.o: ../src/config/pic32ck_gc01_cult/interrupts.c  .generated_files/flags/pic32ck_gc01_cult/90b68d3a1e490fa5e99b2d2e9fe8e1af000636a7 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/interrupts.o.d" -o ${OBJECTDIR}/_ext/2000113765/interrupts.o ../src/config/pic32ck_gc01_cult/interrupts.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1821514987/xc32_monitor.o: ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c  .generated_files/flags/pic32ck_gc01_cult/ee266e248642d8c30d46082785e1587504fd83e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1821514987" 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1821514987/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1821514987/xc32_monitor.o ../src/config/pic32ck_gc01_cult/stdio/xc32_monitor.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207386401/plib_nvic.o: ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32ck_gc01_cult/113f9e0178a93457108ac2451a350471d2513f11 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207386401" 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/207386401/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207386401/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/207386401/plib_nvic.o ../src/config/pic32ck_gc01_cult/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/44908540/plib_pm.o: ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c  .generated_files/flags/pic32ck_gc01_cult/68458ec0c3ade890e6c00a4a7dd0bfd64c805d .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/44908540" 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/44908540/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/44908540/plib_pm.o.d" -o ${OBJECTDIR}/_ext/44908540/plib_pm.o ../src/config/pic32ck_gc01_cult/peripheral/pm/plib_pm.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2123560367/plib_clock.o: ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c  .generated_files/flags/pic32ck_gc01_cult/1acd2f6f5afdca576c5cc7e7f8b18f7bc0e2345f .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2123560367" 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2123560367/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2123560367/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2123560367/plib_clock.o ../src/config/pic32ck_gc01_cult/peripheral/clock/plib_clock.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/exceptions.o: ../src/config/pic32ck_gc01_cult/exceptions.c  .generated_files/flags/pic32ck_gc01_cult/1f618bb2a74e197ef09aabd793b4f217ed223ad1 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/exceptions.o.d" -o ${OBJECTDIR}/_ext/2000113765/exceptions.o ../src/config/pic32ck_gc01_cult/exceptions.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2125709853/plib_evsys.o: ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32ck_gc01_cult/5068ada322f0015bf6364be6d5a150174d6c726e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2125709853" 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2125709853/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2125709853/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2125709853/plib_evsys.o ../src/config/pic32ck_gc01_cult/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207439552/plib_port.o: ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c  .generated_files/flags/pic32ck_gc01_cult/fccfdab00aebe413ed92016643d84819573ec57e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207439552" 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/207439552/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207439552/plib_port.o.d" -o ${OBJECTDIR}/_ext/207439552/plib_port.o ../src/config/pic32ck_gc01_cult/peripheral/port/plib_port.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/initialization.o: ../src/config/pic32ck_gc01_cult/initialization.c  .generated_files/flags/pic32ck_gc01_cult/55177b8d00d259d31fe373d9f2dfb8883b79cd9f .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/initialization.o.d" -o ${OBJECTDIR}/_ext/2000113765/initialization.o ../src/config/pic32ck_gc01_cult/initialization.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2000113765/libc_syscalls.o: ../src/config/pic32ck_gc01_cult/libc_syscalls.c  .generated_files/flags/pic32ck_gc01_cult/ed8bce83a05eec757c547d2190fb8b58654974e8 .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2000113765" 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2000113765/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/2000113765/libc_syscalls.o ../src/config/pic32ck_gc01_cult/libc_syscalls.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/207049865/plib_cmcc.o: ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c  .generated_files/flags/pic32ck_gc01_cult/4d8dbf6054b25aaf3538a665e0f3d42d4143b86e .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/207049865" 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/207049865/plib_cmcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32ck_gc01_cult" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CK2051GC01144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/207049865/plib_cmcc.o.d" -o ${OBJECTDIR}/_ext/207049865/plib_cmcc.o ../src/config/pic32ck_gc01_cult/peripheral/cmcc/plib_cmcc.c    -DXPRJ_pic32ck_gc01_cult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/PIC32CK-GC01" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32ck_gc01_cult/cbab63ce60b2454f321e7779d7c057923832596f .generated_files/flags/pic32ck_gc01_cult/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
