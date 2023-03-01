# fwver.py -- print the firmware version number Python3

from oei import *

thing = OEI("192.168.133.12")

print ("DAPHNE firmware version %0X" % thing.read(0x9000,1)[2])

thing.close()

