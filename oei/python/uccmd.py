# uccmd.py -- send a command to the microcontroller and read the response
# uses the new SPI slave firmware. Python 3.

from oei import *

thing = OEI("192.168.133.12")

print('DAPHNE Command Interpreter. Type quit to exit.')

# prompt user for command

while True:

	CmdString = input('daphne% ')

	if (CmdString=="quit"):
		break;
		
	# convert string to list of ascii values

	CmdByteList = []

	for ch in CmdString:
		CmdByteList.append(ord(ch))
	
	CmdByteList.append(0x0d) # tack on CR
	CmdByteList.append(0x0a) # and LF

	# write an ASCII bytes to the SPI command FIFO at 0x9000_0000

	thing.writef(0x90000000, CmdByteList)

	# read the SPI slave response FIFO, this is also at address 0x9000_0000
	# if the FIFO is empty it will return zeros when read.

	ResByteList = thing.readf(0x90000000,200)

	ResString = ""

	for b in ResByteList[2:]:
		if chr(b).isprintable:
			ResString = ResString + chr(b)
	
	print(ResString)

thing.close()





