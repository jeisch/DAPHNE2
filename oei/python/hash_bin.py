import hashlib
binfile = open('/home/jeisch/DAPHNE2/xilinx/outout.bin', 'rb')
m = hashlib.sha256()
while True:
    pagedata = binfile.read(256)
    if pagedata == b'':
        break
    if len(pagedata)<256:
        pagedata += (256-len(pagedata))*b'\0'
    m.update(pagedata)
m.hexdigest()