#!../../bin/linux-x86_64/ps

#- SPDX-FileCopyrightText: 2005 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change ps to something else
#- everywhere it appears in this file
< envPaths


epicsEnvSet("P","PS")
epicsEnvSet("STREAM_PROTOCOL_PATH","../../db")


## Register all support components
dbLoadDatabase "../../dbd/ps.dbd"
ps_registerRecordDeviceDriver(pdbbase) 

drvAsynIPPortConfigure("DEV1","172.30.83.100:10001")
## Load record instances
#dbLoadRecords("../../db/ps.db","user=iocadm")
dbLoadRecords("/opt/epics/asyn-4.44.2/db/asynRecord.db","P=$(P),R=:asyn,PORT=DEV1,ADDR=0,IMAX=0,OMAX=0" )
dbLoadRecords("../../db/ps.db","user=iocadm")


iocInit()

## Start any sequence programs
#seq sncps,"user=iocadm"
