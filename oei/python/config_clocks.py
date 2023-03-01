# reset.py -- reset timing endpoint logic then report on endpoint status bits Python3

from oei import *
import time

thing = OEI("192.168.133.12")

print("DAPHNE firmware version %0X" % thing.read(0x9000,1)[2])

# master clock input can be endpoint (=1) or local clocks (=0), choose that here:

USE_ENDPOINT = 1

# configure these misc timing endpoint parameters

EDGE_SELECT = 0
TIMING_GROUP = 0
ENDPOINT_ADDRESS = 0

# now write to the master clock and endpoint control register:

temp = (ENDPOINT_ADDRESS&0xFF)<<8 + (TIMING_GROUP&0x3)<<2 + (EDGE_SELECT&0x1)<<1 + (USE_ENDPOINT & 0x1)

thing.write(0x4001, [temp]) 

# now reset the timing endpoint logic

thing.write(0x4003, [1234])

# wait a moment for timing endpoint clocks to stabilize...

time.sleep(0.5)

# reset the master clock MMCM1

thing.write(0x4002, [1234])

# wait a moment for the master clocks to stabilize...

time.sleep(0.5)

# reset the front end and force recalibration

thing.write(0x2001, [1234]) 

# wait a moment for the front end logic to recalibrate...

time.sleep(0.5)

# dump out front end status registers...

# 5 LSb's = DONE bits should be HIGH if the front end has completed auto alignment

print("AFE automatic alignment done, should read 0x1F: %0X" % thing.read(0x2002,1)[2])

# bit error count registers for each AFE 
# if an error is observed on the "FCLK" pattern it increments this counter up to 0xFF

print("AFE0 Error Count = %0X" % thing.read(0x2010,1)[2])
print("AFE1 Error Count = %0X" % thing.read(0x2011,1)[2])
print("AFE2 Error Count = %0X" % thing.read(0x2012,1)[2])
print("AFE3 Error Count = %0X" % thing.read(0x2013,1)[2])
print("AFE4 Error Count = %0X" % thing.read(0x2014,1)[2])

thing.close()

