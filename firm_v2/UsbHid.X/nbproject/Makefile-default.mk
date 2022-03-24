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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/UsbHid.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/UsbHid.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/driver/usb/usbfs/src/drv_usbfs.c ../src/config/default/driver/usb/usbfs/src/drv_usbfs_host.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/usb/src/usb_host.c ../src/config/default/usb/src/usb_host_hid.c ../src/config/default/usb/src/usb_host_hid_keyboard.c ../src/config/default/usb/src/usb_host_hid_mouse.c ../src/config/default/usb_host_init_data.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/tasks.c ../src/main.c ../src/app.c D:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/hid.c D:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/ps2.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2128569739/drv_usbfs.o ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/308758920/usb_host.o ${OBJECTDIR}/_ext/308758920/usb_host_hid.o ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/856378067/hid.o ${OBJECTDIR}/_ext/856378067/ps2.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2128569739/drv_usbfs.o.d ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/944882569/sys_debug.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/308758920/usb_host.o.d ${OBJECTDIR}/_ext/308758920/usb_host_hid.o.d ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o.d ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o.d ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/856378067/hid.o.d ${OBJECTDIR}/_ext/856378067/ps2.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2128569739/drv_usbfs.o ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/308758920/usb_host.o ${OBJECTDIR}/_ext/308758920/usb_host_hid.o ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/856378067/hid.o ${OBJECTDIR}/_ext/856378067/ps2.o

# Source Files
SOURCEFILES=../src/config/default/driver/usb/usbfs/src/drv_usbfs.c ../src/config/default/driver/usb/usbfs/src/drv_usbfs_host.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/usb/src/usb_host.c ../src/config/default/usb/src/usb_host_hid.c ../src/config/default/usb/src/usb_host_hid_keyboard.c ../src/config/default/usb/src/usb_host_hid_mouse.c ../src/config/default/usb_host_init_data.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/tasks.c ../src/main.c ../src/app.c D:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/hid.c D:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/ps2.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/UsbHid.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX230F256B
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MX270F256B.ld"
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
${OBJECTDIR}/_ext/2128569739/drv_usbfs.o: ../src/config/default/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/24efb93cb6a253512f432cb75fc335f419e364e5.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2128569739" 
	@${RM} ${OBJECTDIR}/_ext/2128569739/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128569739/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2128569739/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/2128569739/drv_usbfs.o ../src/config/default/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o: ../src/config/default/driver/usb/usbfs/src/drv_usbfs_host.c  .generated_files/e884058df48f184d1a073551924d89be5ffc61a2.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2128569739" 
	@${RM} ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o.d" -o ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o ../src/config/default/driver/usb/usbfs/src/drv_usbfs_host.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/548d622884d372667c1d76f9e1b801f3243d279b.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/7ea8ecde254520d32ec96e616c97d14f9342a494.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/5bda39e984fe2ae9ca186fdb542a47fe11403831.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/42aa0fe461ea1f0b0b004cc697595c349c9396fd.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/c08f571c0e1ddc11ae22b9ffd557909ca618412c.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/7a7fbe07e3d5cdd7202c21366640b7fe5493d49a.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/d69e06edd506c902a7e3297fed752480e085e5bd.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/1af077f8dda0ac8b418f73308630494e819b52b0.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/4aa561feefdd4ea42eff6e56d7075752eb5a44c8.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/54a82c6b913d0d0ea677c9d536bd6fb645f03b9c.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/5ca1fdeef8f80cb58ad28b466a0ff844b16b0740.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_host.o: ../src/config/default/usb/src/usb_host.c  .generated_files/f6bd6134b440dc5033bb909a1fa9e32b4202f434.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_host.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_host.o ../src/config/default/usb/src/usb_host.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_host_hid.o: ../src/config/default/usb/src/usb_host_hid.c  .generated_files/91672bd410a879b55d4d8d90e542c530d66c196e.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_host_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_host_hid.o ../src/config/default/usb/src/usb_host_hid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o: ../src/config/default/usb/src/usb_host_hid_keyboard.c  .generated_files/6ca4043ad5e0c1f6476ca67166e0720d9a42f6a3.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o ../src/config/default/usb/src/usb_host_hid_keyboard.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o: ../src/config/default/usb/src/usb_host_hid_mouse.c  .generated_files/1cb5ec9bb058b5afdf08dd272d4febc90fbc84bc.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o ../src/config/default/usb/src/usb_host_hid_mouse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o: ../src/config/default/usb_host_init_data.c  .generated_files/29d0261a41d742eed196aebf468ba3a862304e6b.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o ../src/config/default/usb_host_init_data.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/ec84b5459fcfe9f2bd650333f852ca52ab4bf3bf.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/f38e3637565db67fd3716f074b3ad206d6862559.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/c56e786ad6c8c1fe38f937d94860c8d8a9013d06.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/3fda981370d5d62f2e699fd3393710950b8ba51f.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/deabea70d880c09d628bc6d65bf4aa4ff1df67cc.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/7a42b1e48cbcb9d40219cebc35977ce7c9995e03.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/856378067/hid.o: D\:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/hid.c  .generated_files/14a1e70122d9dd579076cfa633e9e9425c746b48.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856378067" 
	@${RM} ${OBJECTDIR}/_ext/856378067/hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/856378067/hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856378067/hid.o.d" -o ${OBJECTDIR}/_ext/856378067/hid.o D:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/hid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/856378067/ps2.o: D\:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/ps2.c  .generated_files/f10632ee16b82b071ff9e6c65172c7929b18ea4.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856378067" 
	@${RM} ${OBJECTDIR}/_ext/856378067/ps2.o.d 
	@${RM} ${OBJECTDIR}/_ext/856378067/ps2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856378067/ps2.o.d" -o ${OBJECTDIR}/_ext/856378067/ps2.o D:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/ps2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2128569739/drv_usbfs.o: ../src/config/default/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/dc7c3e76f7e224b6b05ae85f8bb08574a68e0600.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2128569739" 
	@${RM} ${OBJECTDIR}/_ext/2128569739/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128569739/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2128569739/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/2128569739/drv_usbfs.o ../src/config/default/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o: ../src/config/default/driver/usb/usbfs/src/drv_usbfs_host.c  .generated_files/31fbc607ec5ddba17cd575dcf681afe826aab38d.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2128569739" 
	@${RM} ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o.d" -o ${OBJECTDIR}/_ext/2128569739/drv_usbfs_host.o ../src/config/default/driver/usb/usbfs/src/drv_usbfs_host.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/80589eb859cf26b5b16e917a2b2396638cfd057f.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/bc1045b8ec5d7dae83a4e87a0fd16b1de116c74e.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/c1d5898df46eb19fd58945b654c8055af5224103.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/f903c1c17a27a5f6017139165b17566045c6880e.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/97a19e7caea1b2b136380e1797790135ef664881.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/e3c38da017cd894e56bb6df19f4c550e1fe2e8ff.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/2a992b876cde76a2a20d6945723b7cc9304b4383.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/6cb390f242bc50fe6d17438a8023d4284bb1df18.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/c0b6d4b64c2b2b76e9805ae5df5817dec82ff65a.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/24db833fc12f227f58d2da06c64bea436f109695.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/2ec2a38e92600997cb99596bf54a599dea7f6794.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_host.o: ../src/config/default/usb/src/usb_host.c  .generated_files/c0e954fa6b1d365aada4aff8fca35e39b46f01fe.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_host.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_host.o ../src/config/default/usb/src/usb_host.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_host_hid.o: ../src/config/default/usb/src/usb_host_hid.c  .generated_files/1a6c6f1c7436ba7c0db743613e39780c241ef2db.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_host_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_host_hid.o ../src/config/default/usb/src/usb_host_hid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o: ../src/config/default/usb/src/usb_host_hid_keyboard.c  .generated_files/9b554a32a94a128df7714e3d7bc7038b3537166d.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_host_hid_keyboard.o ../src/config/default/usb/src/usb_host_hid_keyboard.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o: ../src/config/default/usb/src/usb_host_hid_mouse.c  .generated_files/a0d20e7909771892257db0bdcf41198634d52c6d.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_host_hid_mouse.o ../src/config/default/usb/src/usb_host_hid_mouse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o: ../src/config/default/usb_host_init_data.c  .generated_files/5ad9292856e09b876a58cf8556d67a48555d7022.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_host_init_data.o ../src/config/default/usb_host_init_data.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/972b37c32ac5b0f33b4f5f123b6e7927699da7ed.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/b0518697ab879cc9e63f8645be230863fb97ef9b.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/78b1eeee2cf001c9808abac0f6aea87e001e1f3a.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/f0ac8019a0a9e90c455cd3c86faa3eefba9fae64.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/cb9fc9a83429b96b65ee09c4bfc10b2a84113353.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/1b363f8362909e6e75bdd4667b488e21662b797d.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/856378067/hid.o: D\:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/hid.c  .generated_files/286e2866c0949d5c172c9bc022fd38cadaf83a71.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856378067" 
	@${RM} ${OBJECTDIR}/_ext/856378067/hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/856378067/hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856378067/hid.o.d" -o ${OBJECTDIR}/_ext/856378067/hid.o D:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/hid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/856378067/ps2.o: D\:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/ps2.c  .generated_files/d39551ce3f8dee867655d7e068d6ff655e3f5635.flag .generated_files/52e8a28c51cbe3393d95432eb3028cf970da00f6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/856378067" 
	@${RM} ${OBJECTDIR}/_ext/856378067/ps2.o.d 
	@${RM} ${OBJECTDIR}/_ext/856378067/ps2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX270F256B_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/856378067/ps2.o.d" -o ${OBJECTDIR}/_ext/856378067/ps2.o D:/31_WS/PIC32/UsbHidPS2_12MHz/firmware/src/ps2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/UsbHid.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MX270F256B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/UsbHid.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=4096,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/UsbHid.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MX270F256B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/UsbHid.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/UsbHid.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
