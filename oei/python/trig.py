# dump.py -- dump DAPHNE INPUT spy buffers
# Jamieson Olsen <jamieson@fnal.gov> Python3

from oei import *

thing = OEI("192.168.133.12")

# write ANYTHING to register 0x0000_2000 to trigger ALL spy buffers
# OR apply pulse to trigger input connector on the back of DAPHNE

thing.write(0x2000, [1234])

print("Triggered all DAPHNE spy buffers!")
       
thing.close()

