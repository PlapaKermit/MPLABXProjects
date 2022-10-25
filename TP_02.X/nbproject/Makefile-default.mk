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
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=${DISTDIR}/TP_02.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=${DISTDIR}/TP_02.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/etien/MPLABXProjects/TP_02.X/fonction.c C:/Users/etien/MPLABXProjects/TP_02.X/main.c C:/Users/etien/MPLABXProjects/TP_02.X/Configuration.c C:/Users/etien/MPLABXProjects/TP_02.X/LCD.c C:/Users/etien/MPLABXProjects/TP_02.X/clav.c C:/Users/etien/MPLABXProjects/TP_02.X/CNA.c C:/Users/etien/MPLABXProjects/TP_02.X/liaisonUSB.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1103802521/fonction.p1 ${OBJECTDIR}/_ext/1103802521/main.p1 ${OBJECTDIR}/_ext/1103802521/Configuration.p1 ${OBJECTDIR}/_ext/1103802521/LCD.p1 ${OBJECTDIR}/_ext/1103802521/clav.p1 ${OBJECTDIR}/_ext/1103802521/CNA.p1 ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1103802521/fonction.p1.d ${OBJECTDIR}/_ext/1103802521/main.p1.d ${OBJECTDIR}/_ext/1103802521/Configuration.p1.d ${OBJECTDIR}/_ext/1103802521/LCD.p1.d ${OBJECTDIR}/_ext/1103802521/clav.p1.d ${OBJECTDIR}/_ext/1103802521/CNA.p1.d ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1103802521/fonction.p1 ${OBJECTDIR}/_ext/1103802521/main.p1 ${OBJECTDIR}/_ext/1103802521/Configuration.p1 ${OBJECTDIR}/_ext/1103802521/LCD.p1 ${OBJECTDIR}/_ext/1103802521/clav.p1 ${OBJECTDIR}/_ext/1103802521/CNA.p1 ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1

# Source Files
SOURCEFILES=C:/Users/etien/MPLABXProjects/TP_02.X/fonction.c C:/Users/etien/MPLABXProjects/TP_02.X/main.c C:/Users/etien/MPLABXProjects/TP_02.X/Configuration.c C:/Users/etien/MPLABXProjects/TP_02.X/LCD.c C:/Users/etien/MPLABXProjects/TP_02.X/clav.c C:/Users/etien/MPLABXProjects/TP_02.X/CNA.c C:/Users/etien/MPLABXProjects/TP_02.X/liaisonUSB.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/TP_02.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F87K22
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1103802521/fonction.p1: C:/Users/etien/MPLABXProjects/TP_02.X/fonction.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/fonction.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/fonction.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/fonction.p1 C:/Users/etien/MPLABXProjects/TP_02.X/fonction.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/fonction.d ${OBJECTDIR}/_ext/1103802521/fonction.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/fonction.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/main.p1: C:/Users/etien/MPLABXProjects/TP_02.X/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/main.p1 C:/Users/etien/MPLABXProjects/TP_02.X/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/main.d ${OBJECTDIR}/_ext/1103802521/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/Configuration.p1: C:/Users/etien/MPLABXProjects/TP_02.X/Configuration.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/Configuration.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/Configuration.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/Configuration.p1 C:/Users/etien/MPLABXProjects/TP_02.X/Configuration.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/Configuration.d ${OBJECTDIR}/_ext/1103802521/Configuration.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/Configuration.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/LCD.p1: C:/Users/etien/MPLABXProjects/TP_02.X/LCD.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/LCD.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/LCD.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/LCD.p1 C:/Users/etien/MPLABXProjects/TP_02.X/LCD.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/LCD.d ${OBJECTDIR}/_ext/1103802521/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/clav.p1: C:/Users/etien/MPLABXProjects/TP_02.X/clav.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/clav.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/clav.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/clav.p1 C:/Users/etien/MPLABXProjects/TP_02.X/clav.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/clav.d ${OBJECTDIR}/_ext/1103802521/clav.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/clav.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/CNA.p1: C:/Users/etien/MPLABXProjects/TP_02.X/CNA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/CNA.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/CNA.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/CNA.p1 C:/Users/etien/MPLABXProjects/TP_02.X/CNA.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/CNA.d ${OBJECTDIR}/_ext/1103802521/CNA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/CNA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1: C:/Users/etien/MPLABXProjects/TP_02.X/liaisonUSB.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1 C:/Users/etien/MPLABXProjects/TP_02.X/liaisonUSB.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/liaisonUSB.d ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1103802521/fonction.p1: C:/Users/etien/MPLABXProjects/TP_02.X/fonction.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/fonction.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/fonction.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/fonction.p1 C:/Users/etien/MPLABXProjects/TP_02.X/fonction.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/fonction.d ${OBJECTDIR}/_ext/1103802521/fonction.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/fonction.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/main.p1: C:/Users/etien/MPLABXProjects/TP_02.X/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/main.p1 C:/Users/etien/MPLABXProjects/TP_02.X/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/main.d ${OBJECTDIR}/_ext/1103802521/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/Configuration.p1: C:/Users/etien/MPLABXProjects/TP_02.X/Configuration.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/Configuration.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/Configuration.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/Configuration.p1 C:/Users/etien/MPLABXProjects/TP_02.X/Configuration.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/Configuration.d ${OBJECTDIR}/_ext/1103802521/Configuration.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/Configuration.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/LCD.p1: C:/Users/etien/MPLABXProjects/TP_02.X/LCD.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/LCD.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/LCD.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/LCD.p1 C:/Users/etien/MPLABXProjects/TP_02.X/LCD.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/LCD.d ${OBJECTDIR}/_ext/1103802521/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/clav.p1: C:/Users/etien/MPLABXProjects/TP_02.X/clav.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/clav.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/clav.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/clav.p1 C:/Users/etien/MPLABXProjects/TP_02.X/clav.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/clav.d ${OBJECTDIR}/_ext/1103802521/clav.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/clav.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/CNA.p1: C:/Users/etien/MPLABXProjects/TP_02.X/CNA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/CNA.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/CNA.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/CNA.p1 C:/Users/etien/MPLABXProjects/TP_02.X/CNA.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/CNA.d ${OBJECTDIR}/_ext/1103802521/CNA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/CNA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1: C:/Users/etien/MPLABXProjects/TP_02.X/liaisonUSB.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1103802521" 
	@${RM} ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1 C:/Users/etien/MPLABXProjects/TP_02.X/liaisonUSB.c 
	@-${MV} ${OBJECTDIR}/_ext/1103802521/liaisonUSB.d ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1103802521/liaisonUSB.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/TP_02.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -m${DISTDIR}/TP_02.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=pickit3  -DXPRJ_default=$(CND_CONF)    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD)  -o${DISTDIR}/TP_02.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/TP_02.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/TP_02.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -m${DISTDIR}/TP_02.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)    --double=24 --float=24 --emi=wordwrite --ram=default,20000-1FFFFF --opt=+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD)  -o${DISTDIR}/TP_02.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
