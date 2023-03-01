# dump.py -- dump DAPHNE spy buffers Python3

from oei import *

thing = OEI("192.168.133.12")

print("DAPHNE firmware version %0X" % thing.read(0x9000,1)[2])

thing.write(0x2000, [1234]) # software trigger, all spy buffers capture

print

for afe in range(5):
    for ch in range(9):
        print("AFE%d[%d]: " % (afe,ch),end="")
        for x in thing.read(0x40000000+(afe*0x100000)+(ch*0x10000),20)[3:]:
            print("%04X " % x,end="")
        print()
    print()
       
thing.close()

