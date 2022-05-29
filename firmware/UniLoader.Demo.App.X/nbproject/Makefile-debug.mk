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
ifeq "$(wildcard nbproject/Makefile-local-debug.mk)" "nbproject/Makefile-local-debug.mk"
include nbproject/Makefile-local-debug.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=debug
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/UniLoader.Demo.App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/UniLoader.Demo.App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/debug/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/debug/peripheral/evsys/plib_evsys.c ../src/main.c ../src/config/debug/initialization.c ../src/config/debug/interrupts.c ../src/config/debug/exceptions.c ../src/config/debug/stdio/xc32_monitor.c ../src/config/debug/peripheral/port/plib_port.c ../src/config/debug/peripheral/clock/plib_clock.c ../src/config/debug/peripheral/nvic/plib_nvic.c ../src/config/debug/startup_xc32.c ../src/config/debug/libc_syscalls.c ../src/config/debug/bsp/bsp.c ../src/config/debug/peripheral/tc/plib_tc0.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o ${OBJECTDIR}/_ext/563042216/plib_evsys.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1587806208/initialization.o ${OBJECTDIR}/_ext/1587806208/interrupts.o ${OBJECTDIR}/_ext/1587806208/exceptions.o ${OBJECTDIR}/_ext/711103418/xc32_monitor.o ${OBJECTDIR}/_ext/1264767707/plib_port.o ${OBJECTDIR}/_ext/565191702/plib_clock.o ${OBJECTDIR}/_ext/1264820858/plib_nvic.o ${OBJECTDIR}/_ext/1587806208/startup_xc32.o ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o ${OBJECTDIR}/_ext/1824185264/bsp.o ${OBJECTDIR}/_ext/34438163/plib_tc0.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/563042216/plib_evsys.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1587806208/initialization.o.d ${OBJECTDIR}/_ext/1587806208/interrupts.o.d ${OBJECTDIR}/_ext/1587806208/exceptions.o.d ${OBJECTDIR}/_ext/711103418/xc32_monitor.o.d ${OBJECTDIR}/_ext/1264767707/plib_port.o.d ${OBJECTDIR}/_ext/565191702/plib_clock.o.d ${OBJECTDIR}/_ext/1264820858/plib_nvic.o.d ${OBJECTDIR}/_ext/1587806208/startup_xc32.o.d ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o.d ${OBJECTDIR}/_ext/1824185264/bsp.o.d ${OBJECTDIR}/_ext/34438163/plib_tc0.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o ${OBJECTDIR}/_ext/563042216/plib_evsys.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1587806208/initialization.o ${OBJECTDIR}/_ext/1587806208/interrupts.o ${OBJECTDIR}/_ext/1587806208/exceptions.o ${OBJECTDIR}/_ext/711103418/xc32_monitor.o ${OBJECTDIR}/_ext/1264767707/plib_port.o ${OBJECTDIR}/_ext/565191702/plib_clock.o ${OBJECTDIR}/_ext/1264820858/plib_nvic.o ${OBJECTDIR}/_ext/1587806208/startup_xc32.o ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o ${OBJECTDIR}/_ext/1824185264/bsp.o ${OBJECTDIR}/_ext/34438163/plib_tc0.o

# Source Files
SOURCEFILES=../src/config/debug/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/debug/peripheral/evsys/plib_evsys.c ../src/main.c ../src/config/debug/initialization.c ../src/config/debug/interrupts.c ../src/config/debug/exceptions.c ../src/config/debug/stdio/xc32_monitor.c ../src/config/debug/peripheral/port/plib_port.c ../src/config/debug/peripheral/clock/plib_clock.c ../src/config/debug/peripheral/nvic/plib_nvic.c ../src/config/debug/startup_xc32.c ../src/config/debug/libc_syscalls.c ../src/config/debug/bsp/bsp.c ../src/config/debug/peripheral/tc/plib_tc0.c

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
	${MAKE}  -f nbproject/Makefile-debug.mk ${DISTDIR}/UniLoader.Demo.App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMC21J18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\debug\ATSAMC21J18A.ld"
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
${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o: ../src/config/debug/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/debug/ed3bcbecb1f1029c1d51b98d3a1d3161bfb44ccf .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/526283668" 
	@${RM} ${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o ../src/config/debug/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/563042216/plib_evsys.o: ../src/config/debug/peripheral/evsys/plib_evsys.c  .generated_files/flags/debug/d38a520b10b86af8dae7b699515c8c284af7626f .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/563042216" 
	@${RM} ${OBJECTDIR}/_ext/563042216/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/563042216/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/563042216/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/563042216/plib_evsys.o ../src/config/debug/peripheral/evsys/plib_evsys.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/debug/75373d6109c35cf2e269d35a63983a92e9af4e72 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/initialization.o: ../src/config/debug/initialization.c  .generated_files/flags/debug/d230b868311c45634bd3c0707ac40f6199a08ce8 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/initialization.o.d" -o ${OBJECTDIR}/_ext/1587806208/initialization.o ../src/config/debug/initialization.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/interrupts.o: ../src/config/debug/interrupts.c  .generated_files/flags/debug/7076c87ddc8588d110b85caa1a0d6700bc326bdf .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/interrupts.o.d" -o ${OBJECTDIR}/_ext/1587806208/interrupts.o ../src/config/debug/interrupts.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/exceptions.o: ../src/config/debug/exceptions.c  .generated_files/flags/debug/f07a2926710d1c9c154eb70c567d834888d6081 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/exceptions.o.d" -o ${OBJECTDIR}/_ext/1587806208/exceptions.o ../src/config/debug/exceptions.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/711103418/xc32_monitor.o: ../src/config/debug/stdio/xc32_monitor.c  .generated_files/flags/debug/6f85c6cb4f6c268e230bcb8e66f09d6217bb4ff1 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/711103418" 
	@${RM} ${OBJECTDIR}/_ext/711103418/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/711103418/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711103418/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/711103418/xc32_monitor.o ../src/config/debug/stdio/xc32_monitor.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1264767707/plib_port.o: ../src/config/debug/peripheral/port/plib_port.c  .generated_files/flags/debug/bb07af7194e3b264f44a69527819bf5e8b2a2ce6 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1264767707" 
	@${RM} ${OBJECTDIR}/_ext/1264767707/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264767707/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1264767707/plib_port.o.d" -o ${OBJECTDIR}/_ext/1264767707/plib_port.o ../src/config/debug/peripheral/port/plib_port.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/565191702/plib_clock.o: ../src/config/debug/peripheral/clock/plib_clock.c  .generated_files/flags/debug/5270cda6e679348f9002f8561d72fbb69e35c018 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/565191702" 
	@${RM} ${OBJECTDIR}/_ext/565191702/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/565191702/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/565191702/plib_clock.o.d" -o ${OBJECTDIR}/_ext/565191702/plib_clock.o ../src/config/debug/peripheral/clock/plib_clock.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1264820858/plib_nvic.o: ../src/config/debug/peripheral/nvic/plib_nvic.c  .generated_files/flags/debug/4aa1b8a35f170ba387de32282de09b23d382d78b .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1264820858" 
	@${RM} ${OBJECTDIR}/_ext/1264820858/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264820858/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1264820858/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1264820858/plib_nvic.o ../src/config/debug/peripheral/nvic/plib_nvic.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/startup_xc32.o: ../src/config/debug/startup_xc32.c  .generated_files/flags/debug/47c108bc2b0046fc797fe864473f653689dd1c04 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1587806208/startup_xc32.o ../src/config/debug/startup_xc32.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/libc_syscalls.o: ../src/config/debug/libc_syscalls.c  .generated_files/flags/debug/5b675c02ce68fd66e73923d2c1393271d62d3677 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o ../src/config/debug/libc_syscalls.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1824185264/bsp.o: ../src/config/debug/bsp/bsp.c  .generated_files/flags/debug/cc5c72d3f900d2156ba73d87d7d9b0fecc0e7c57 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1824185264" 
	@${RM} ${OBJECTDIR}/_ext/1824185264/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824185264/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824185264/bsp.o.d" -o ${OBJECTDIR}/_ext/1824185264/bsp.o ../src/config/debug/bsp/bsp.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/34438163/plib_tc0.o: ../src/config/debug/peripheral/tc/plib_tc0.c  .generated_files/flags/debug/c9a0c1969bd7ce5f4d4b6642339af74c1a4abcd6 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/34438163" 
	@${RM} ${OBJECTDIR}/_ext/34438163/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/34438163/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/34438163/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/34438163/plib_tc0.o ../src/config/debug/peripheral/tc/plib_tc0.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o: ../src/config/debug/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/debug/8f1d70e78c0f4e5c4852428ddd9a0fda637e6cd8 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/526283668" 
	@${RM} ${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/526283668/plib_nvmctrl.o ../src/config/debug/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/563042216/plib_evsys.o: ../src/config/debug/peripheral/evsys/plib_evsys.c  .generated_files/flags/debug/983b96e6c3e4c01fce34bc384e2f968417c8d2d8 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/563042216" 
	@${RM} ${OBJECTDIR}/_ext/563042216/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/563042216/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/563042216/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/563042216/plib_evsys.o ../src/config/debug/peripheral/evsys/plib_evsys.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/debug/757e9c7ef5350a13521edf2b834df2437aeafc64 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/initialization.o: ../src/config/debug/initialization.c  .generated_files/flags/debug/354f63748cb237fd041d06e0c87602066ae2a0a .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/initialization.o.d" -o ${OBJECTDIR}/_ext/1587806208/initialization.o ../src/config/debug/initialization.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/interrupts.o: ../src/config/debug/interrupts.c  .generated_files/flags/debug/50f272ce62e89e5f3958174534922e0c298fe69e .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/interrupts.o.d" -o ${OBJECTDIR}/_ext/1587806208/interrupts.o ../src/config/debug/interrupts.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/exceptions.o: ../src/config/debug/exceptions.c  .generated_files/flags/debug/92992561601140667451664714502d0aff7b050d .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/exceptions.o.d" -o ${OBJECTDIR}/_ext/1587806208/exceptions.o ../src/config/debug/exceptions.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/711103418/xc32_monitor.o: ../src/config/debug/stdio/xc32_monitor.c  .generated_files/flags/debug/8bc4394ba8e727cc225bf37133f14016c5f501e7 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/711103418" 
	@${RM} ${OBJECTDIR}/_ext/711103418/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/711103418/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711103418/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/711103418/xc32_monitor.o ../src/config/debug/stdio/xc32_monitor.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1264767707/plib_port.o: ../src/config/debug/peripheral/port/plib_port.c  .generated_files/flags/debug/676f018f651472334dd4f94130b80ecfbc4b9733 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1264767707" 
	@${RM} ${OBJECTDIR}/_ext/1264767707/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264767707/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1264767707/plib_port.o.d" -o ${OBJECTDIR}/_ext/1264767707/plib_port.o ../src/config/debug/peripheral/port/plib_port.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/565191702/plib_clock.o: ../src/config/debug/peripheral/clock/plib_clock.c  .generated_files/flags/debug/426fac5f4b83d8c4f06d63f49a40e29d673a59de .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/565191702" 
	@${RM} ${OBJECTDIR}/_ext/565191702/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/565191702/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/565191702/plib_clock.o.d" -o ${OBJECTDIR}/_ext/565191702/plib_clock.o ../src/config/debug/peripheral/clock/plib_clock.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1264820858/plib_nvic.o: ../src/config/debug/peripheral/nvic/plib_nvic.c  .generated_files/flags/debug/6ecaafb292b39c5272c61232d1fe84011f0a3340 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1264820858" 
	@${RM} ${OBJECTDIR}/_ext/1264820858/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1264820858/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1264820858/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1264820858/plib_nvic.o ../src/config/debug/peripheral/nvic/plib_nvic.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/startup_xc32.o: ../src/config/debug/startup_xc32.c  .generated_files/flags/debug/716dc5f417a816558b55587528d1ca8e60aa1aaf .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1587806208/startup_xc32.o ../src/config/debug/startup_xc32.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1587806208/libc_syscalls.o: ../src/config/debug/libc_syscalls.c  .generated_files/flags/debug/28f9fa05d56b607b07c1bb03b7f0f302f12dbd28 .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1587806208" 
	@${RM} ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1587806208/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1587806208/libc_syscalls.o ../src/config/debug/libc_syscalls.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1824185264/bsp.o: ../src/config/debug/bsp/bsp.c  .generated_files/flags/debug/c19286c3b260ef63876d9849871c194554abbe8e .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/1824185264" 
	@${RM} ${OBJECTDIR}/_ext/1824185264/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824185264/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824185264/bsp.o.d" -o ${OBJECTDIR}/_ext/1824185264/bsp.o ../src/config/debug/bsp/bsp.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/34438163/plib_tc0.o: ../src/config/debug/peripheral/tc/plib_tc0.c  .generated_files/flags/debug/7fed06d5b8dc8adffa8398f710eecedf403704b .generated_files/flags/debug/83f0eaca8deb9a2213f74cf698f5c530ae8a5a2f
	@${MKDIR} "${OBJECTDIR}/_ext/34438163" 
	@${RM} ${OBJECTDIR}/_ext/34438163/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/34438163/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/debug" -I"../src/packs/ATSAMC21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/34438163/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/34438163/plib_tc0.o ../src/config/debug/peripheral/tc/plib_tc0.c    -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samc21" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/UniLoader.Demo.App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/debug/ATSAMC21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g  -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/UniLoader.Demo.App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samc21"
	
else
${DISTDIR}/UniLoader.Demo.App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/debug/ATSAMC21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/UniLoader.Demo.App.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_debug=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samc21"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/UniLoader.Demo.App.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
