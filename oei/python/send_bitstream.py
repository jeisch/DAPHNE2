#!/bin/env python3
# send_bitstream.py -- send a bitstream to a DAPHNE2A through repeated write commands

import argparse
from oei import *
from time import sleep,time
import encode_bin

class command_sender(object):
    def __init__(self, cmd_generator, oei_interface, outstanding=0):
        self.cmdgen = cmd_generator
        self.oei = oei_interface
        self.max_outstanding = outstanding
        self.sent = []
        self.pending = []
        self.returned = []
        self.replybuf = b""
        self.get_reply()
        self.returned = [] # re-initialize to clear out previous entries
        self.replybuf = b"" # same
        print("ready")

    def send_header(self):
        cmd = self.cmdgen.HeaderWriteCmd()
        cmdbin = [ord(ch) for ch in cmd]
        cmdbin.append(0x0d)
        self.pending.append(bytes(cmdbin))
        for i in range((len(cmdbin)+49)//50):
            self.oei.writef(0x90000000, cmdbin[i*50:(i+1)*50])


    def send_next(self):
        cmd = self.cmdgen.next()
        cmdbin = [ord(ch) for ch in cmd]
        cmdbin.append(0x0d)
        self.pending.append(bytes(cmdbin))
        for i in range((len(cmdbin)+49)//50):
            self.oei.writef(0x90000000, cmdbin[i*50:(i+1)*50])

    def get_reply(self):
        more = True
        replylen = 0
        while(more):
            reply = self.oei.readf(0x90000000,50)[2:]
            reply = bytes([r for r in reply if r != 255])
            if len(reply):
                self.replybuf += reply
                replylen += len(reply)
                self.lastbyte = time()
            else:
                more = False
        return replylen
    
    def parse_replybuf(self):
        parsed = 0
        # Don't actually check for full replies now, for testing
        endindex = self.replybuf.find(3)
        while endindex > -1:
            self.returned.append(self.replybuf[:endindex+1])
            for i in range(len(self.pending)):
                if self.pending[i][:-1] in self.replybuf[:endindex+1]:
                    self.sent.append(self.pending[i])
                    self.pending.pop(i)
                    break
            self.replybuf = self.replybuf[endindex+1:]
            parsed += 1
            endindex = self.replybuf.find(3)
        return parsed
    
    def count_outstanding(self):
        return len(self.pending)

    def go(self):
        start = time()
        self.lastbyte = time()
        self.send_header()
        while len(self.returned) < len(self.cmdgen):
            if self.cmdgen.more():
                self.send_next()
                if len(self.sent)%1 == 0:
                    print(f"Sent {len(self.sent)+len(self.pending)} of {len(self.cmdgen)} in {time()-start:0.1f}")
            self.get_reply()
            self.parse_replybuf()
            while self.count_outstanding() > self.max_outstanding:
                sleep(0.01)
                self.get_reply()
                self.parse_replybuf()
                if time()-self.lastbyte > 1:
                    return
            if time()-self.lastbyte > 1:
                return



if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=str, required=True, help='Path to bitstream file.')
    parser.add_argument('--ip-address', type=str, required=True, help='IP address.')
    parser.add_argument('--pageoffset', type=int, default=0, help='Starting page offset, must be multiple of 16.')
    parser.add_argument('--header',type=bool, default=True, help='Include header')
    args = parser.parse_args()

    bf =encode_bin.binfile(args.file,page_offset=args.pageoffset,header=args.header)
    thing = OEI(args.ip_address)
    print('sending a bitfile with default options')
    cs = command_sender(bf,thing,4)
    cs.go()