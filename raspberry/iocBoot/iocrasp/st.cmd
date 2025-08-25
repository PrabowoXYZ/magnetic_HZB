#!../../bin/linux-x86_64/rasp

#- SPDX-FileCopyrightText: 2005 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change rasp to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/rasp.dbd"
rasp_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/rasp.db","user=iocadm")

iocInit()

## Start any sequence programs
#seq sncrasp,"user=iocadm"
