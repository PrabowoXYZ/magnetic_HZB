# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = rasp
# rasp.dbd will be created and installed
DBD += rasp.dbd

# rasp.dbd will be made up from these files:
rasp_DBD += base.dbd

# Include dbd files from all support applications:
#rasp_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#rasp_LIBS += xxx

# rasp_registerRecordDeviceDriver.cpp derives from rasp.dbd
rasp_SRCS += rasp_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
rasp_SRCS_DEFAULT += raspMain.cpp
rasp_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#rasp_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
rasp_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

