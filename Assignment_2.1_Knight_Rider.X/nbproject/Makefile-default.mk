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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_2.1_Knight_Rider.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_2.1_Knight_Rider.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=lib/src/lcd.c lib/src/utils.c lib/src/button_utils.c src/assignment2_1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lib/src/lcd.o ${OBJECTDIR}/lib/src/utils.o ${OBJECTDIR}/lib/src/button_utils.o ${OBJECTDIR}/src/assignment2_1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/lib/src/lcd.o.d ${OBJECTDIR}/lib/src/utils.o.d ${OBJECTDIR}/lib/src/button_utils.o.d ${OBJECTDIR}/src/assignment2_1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/lib/src/lcd.o ${OBJECTDIR}/lib/src/utils.o ${OBJECTDIR}/lib/src/button_utils.o ${OBJECTDIR}/src/assignment2_1.o

# Source Files
SOURCEFILES=lib/src/lcd.c lib/src/utils.c lib/src/button_utils.c src/assignment2_1.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_2.1_Knight_Rider.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/lib/src/lcd.o: lib/src/lcd.c  .generated_files/4ee8fbd32e930416d21351fde47c6ab5299b2cd2.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/lcd.o.d 
	@${RM} ${OBJECTDIR}/lib/src/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -I"lib/inc" -I"lib/src" -MP -MMD -MF "${OBJECTDIR}/lib/src/lcd.o.d" -o ${OBJECTDIR}/lib/src/lcd.o lib/src/lcd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/utils.o: lib/src/utils.c  .generated_files/60f6d616121a87912cba99c5036cdd12e29e9b07.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/utils.o.d 
	@${RM} ${OBJECTDIR}/lib/src/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -I"lib/inc" -I"lib/src" -MP -MMD -MF "${OBJECTDIR}/lib/src/utils.o.d" -o ${OBJECTDIR}/lib/src/utils.o lib/src/utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/button_utils.o: lib/src/button_utils.c  .generated_files/2e4c972376493e64db01c1708315258762a5d09b.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/button_utils.o.d 
	@${RM} ${OBJECTDIR}/lib/src/button_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -I"lib/inc" -I"lib/src" -MP -MMD -MF "${OBJECTDIR}/lib/src/button_utils.o.d" -o ${OBJECTDIR}/lib/src/button_utils.o lib/src/button_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/assignment2_1.o: src/assignment2_1.c  .generated_files/7d73af94a598292bfa5deb902f642d5377a6232c.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/assignment2_1.o.d 
	@${RM} ${OBJECTDIR}/src/assignment2_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -I"lib/inc" -I"lib/src" -MP -MMD -MF "${OBJECTDIR}/src/assignment2_1.o.d" -o ${OBJECTDIR}/src/assignment2_1.o src/assignment2_1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/lib/src/lcd.o: lib/src/lcd.c  .generated_files/5fca038410aebc2ae1f8098cabf789091814b07e.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/lcd.o.d 
	@${RM} ${OBJECTDIR}/lib/src/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -I"lib/inc" -I"lib/src" -MP -MMD -MF "${OBJECTDIR}/lib/src/lcd.o.d" -o ${OBJECTDIR}/lib/src/lcd.o lib/src/lcd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/utils.o: lib/src/utils.c  .generated_files/959022d4c1a0841dd26e16273ff912a9ea16f364.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/utils.o.d 
	@${RM} ${OBJECTDIR}/lib/src/utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -I"lib/inc" -I"lib/src" -MP -MMD -MF "${OBJECTDIR}/lib/src/utils.o.d" -o ${OBJECTDIR}/lib/src/utils.o lib/src/utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/button_utils.o: lib/src/button_utils.c  .generated_files/ff120be2b19e3c6fe6a9a0333e230f2b14b8f3f7.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/button_utils.o.d 
	@${RM} ${OBJECTDIR}/lib/src/button_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -I"lib/inc" -I"lib/src" -MP -MMD -MF "${OBJECTDIR}/lib/src/button_utils.o.d" -o ${OBJECTDIR}/lib/src/button_utils.o lib/src/button_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/assignment2_1.o: src/assignment2_1.c  .generated_files/34111277940229fdf438449315c53681f797c0cd.flag .generated_files/27f35a8012588aa0782606a8ea9e1f521326521d.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/assignment2_1.o.d 
	@${RM} ${OBJECTDIR}/src/assignment2_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -I"lib/inc" -I"lib/src" -MP -MMD -MF "${OBJECTDIR}/src/assignment2_1.o.d" -o ${OBJECTDIR}/src/assignment2_1.o src/assignment2_1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_2.1_Knight_Rider.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_2.1_Knight_Rider.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_2.1_Knight_Rider.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_2.1_Knight_Rider.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Assignment_2.1_Knight_Rider.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
