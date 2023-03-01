# dumpout.py -- dump DAPHNE OUTPUT spy buffer(s) Python3
# 
# Jamieson Olsen <jamieson@fnal.gov>

from oei import *

thing = OEI("192.168.133.12")

# write anything to register 0x0000_2000 to trigger all spy buffers

thing.write(0x2000, [1234])

# output spy buffer starts at 0x4060_0000 and is 4k deep

print()

doutrec = thing.read(0x40600000,200)

for word in doutrec[2:]:
    print("%08X" % word)

thing.close()

