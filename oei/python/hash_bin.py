#!/bin/env python3

import argparse
import hashlib

def hashfile(binfile):
    m = hashlib.sha256()
    while True:
        pagedata = binfile.read(256)
        if pagedata == b'':
            break
        if len(pagedata)<256:
            pagedata += (256-len(pagedata))*b'\0'
        m.update(pagedata)
    return m.hexdigest()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=str, required=True, help='Path to bitstream file.')
    args = parser.parse_args()    
    bf = open(args.file, 'rb')
    print(hashfile(bf))