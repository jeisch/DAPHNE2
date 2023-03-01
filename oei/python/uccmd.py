# uccmd.py -- send a command to the microcontroller and read the response
# uses the new SPI slave firmware
# 
# Jamieson Olsen <jamieson@fnal.gov>

from oei import *

thing = OEI("192.168.133.12")

# write and ASCII string to the SPI command FIFO at 0x9000_0000

thing.writef(0x90000000, [0x68,0x65,0x6c,0x70,0x0d,0x0a])

# read the SPI slave response FIFO, also at address 0x9000_0000

print("reading the SPI response FIFO")

responserec = thing.readf(0x90000000,20)

for word in responserec[2:]:
    print "0x%02X" % word

thing.close()

