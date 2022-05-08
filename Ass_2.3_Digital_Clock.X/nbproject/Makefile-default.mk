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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Ass_2.3_Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Ass_2.3_Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=src/button.c src/lcd.c src/main.c src/uart.c src/utils.c src/time.c src/clock.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/button.o ${OBJECTDIR}/src/lcd.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/uart.o ${OBJECTDIR}/src/utils.o ${OBJECTDIR}/src/time.o ${OBJECTDIR}/src/clock.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/button.o.d ${OBJECTDIR}/src/lcd.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/uart.o.d ${OBJECTDIR}/src/utils.o.d ${OBJECTDIR}/src/time.o.d ${OBJECTDIR}/src/clock.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/button.o ${OBJECTDIR}/src/lcd.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/uart.o ${OBJECTDIR}/src/utils.o ${OBJECTDIR}/src/time.o ${OBJECTDIR}/src/clock.o

# Source Files
SOURCEFILES=src/button.c src/lcd.c src/main.c src/uart.c src/utils.c src/time.c src/clock.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Ass_2.3_Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512L
MP_LINKER_FILE_OPTION=
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
${OBJECTDIR}/src/button.o: src/button.c  .generated_files/fcb30dee0b897a62e1d29ef09dae48409c03edc7.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/button.o.d 
	@${RM} ${OBJECTDIR}/src/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/button.o.d" -o ${OBJECTDIR}/src/button.o src/button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/lcd.o: src/lcd.c  .generated_files/c23fd1ff89ded1b388539c2db728c807dc334013.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/lcd.o.d 
	@${RM} ${OBJECTDIR}/src/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/lcd.o.d" -o ${OBJECTDIR}/src/lcd.o src/lcd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/35735364958ac059bad7b8c35c0271dfb445af3b.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/uart.o: src/uart.c  .generated_files/b1aabd856a44148ae2707260beca94386e48b151.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/uart.o.d 
	@${RM} ${OBJECTDIR}/src/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/uart.o.d" -o ${OBJECTDIR}/src/uart.o src/uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/utils.o: src/utils.c  .generated_files/bcb098af994703197791861cf529e29426a4b69e.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/utils.o.d 
	@${RM} ${OBJECTDIR}/src/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/utils.o.d" -o ${OBJECTDIR}/src/utils.o src/utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/time.o: src/time.c  .generated_files/f10c921841077a5a83230f34b68ac813c654a618.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/time.o.d 
	@${RM} ${OBJECTDIR}/src/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/time.o.d" -o ${OBJECTDIR}/src/time.o src/time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/clock.o: src/clock.c  .generated_files/d75830a1c4d8b75165103592ae84561d09b4f715.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/clock.o.d 
	@${RM} ${OBJECTDIR}/src/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/clock.o.d" -o ${OBJECTDIR}/src/clock.o src/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/src/button.o: src/button.c  .generated_files/6ff326a4fde4803295013ac765d5815bdd24a4ab.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/button.o.d 
	@${RM} ${OBJECTDIR}/src/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/button.o.d" -o ${OBJECTDIR}/src/button.o src/button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/lcd.o: src/lcd.c  .generated_files/d82f59b5a3a42fccded95a536b9fa7f1b2b73eba.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/lcd.o.d 
	@${RM} ${OBJECTDIR}/src/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/lcd.o.d" -o ${OBJECTDIR}/src/lcd.o src/lcd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/8ce71424408e467c8cf3ad22b0182ab9685c8817.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/uart.o: src/uart.c  .generated_files/bb904d4a1be42a4787b9889203311850139d525b.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/uart.o.d 
	@${RM} ${OBJECTDIR}/src/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/uart.o.d" -o ${OBJECTDIR}/src/uart.o src/uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/utils.o: src/utils.c  .generated_files/356f72c077cb1818dcacc920bf43b4baa8325fa2.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/utils.o.d 
	@${RM} ${OBJECTDIR}/src/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/utils.o.d" -o ${OBJECTDIR}/src/utils.o src/utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/time.o: src/time.c  .generated_files/ea33593835165063a83ff1e5d58eeb6dcfdc62e0.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/time.o.d 
	@${RM} ${OBJECTDIR}/src/time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/time.o.d" -o ${OBJECTDIR}/src/time.o src/time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/clock.o: src/clock.c  .generated_files/303fd533bcd89b6e9c771ae59d9d8f63c1948fa1.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/clock.o.d 
	@${RM} ${OBJECTDIR}/src/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/clock.o.d" -o ${OBJECTDIR}/src/clock.o src/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Ass_2.3_Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Ass_2.3_Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Ass_2.3_Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Ass_2.3_Digital_Clock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Ass_2.3_Digital_Clock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
