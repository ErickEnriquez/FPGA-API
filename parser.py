#! /usr/bin/env python3

import argparse  # parsing sys.argv line args
import subprocess
import os
import sys


arguments = sys.argv[1:]  # grab everything in list except executable name


parser = argparse.ArgumentParser()  # parser object

#=======================================================================================================================================================



if sys.argv[1] == "delete":
    print('delete')
    
#=======================================================================================================================================================

elif sys.argv[1] == 'h2c':
    parser.add_argument(
        'h2c', help="perfrom a host to card transfer")
    parser.add_argument('-a', help="Address that you want to send the data to on the card")
    parser.add_argument('-f',help='file you want to send')
    args = parser.parse_args(arguments)
    subprocess.Popen('C:/Users/butler/Documents/GitHub/FPGA_API/Xilinx_Answer_65444_Windows_Files/x64/bin/xdma_rw.exe')

#=======================================================================================================================================================
