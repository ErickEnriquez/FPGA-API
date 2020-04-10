

import argparse  # parsing sys.argv line args
import subprocess
import os
import sys



arguments = sys.argv[1:]  # grab everything in list except executable name


parser = argparse.ArgumentParser()  # parser object

#=======================================================================================================================================================

if arguments[0] == "delete":
    parser.add_argument('-delete')
    parser.add_argument('-f',help)
    
#=======================================================================================================================================================

elif arguments[0] == 'h2c_write':
    parser.add_argument(
        'h2c_write', help="perfrom a host to card transfer")
    parser.add_argument('-a', help="Address that you want to send the data to on the card")
    parser.add_argument('-f',help='file you want to send')
    args = parser.parse_args(arguments)
    
    if sys.platform == 'win32':
        argument_string =( 
            'C:/Users/butler/Documents/GitHub/FPGA_API/Xilinx_Answer_65444_Windows_Files/x64/bin/xdma_rw.exe '
            + ' h2c_1' +
            ' write ' + 
            str(args.a) +
            ' -f ' +
            str(args.f)
        )
    elif sys.platform == 'linux':
        print('on linux')
       
    subprocess.Popen(argument_string)

#=======================================================================================================================================================

elif arguments[0] == 'c2h_read':
    parser.add_argument(
        'c2h_read', help="perfrom a host to card transfer")
    parser.add_argument('-a', help="Address that you want to send the data to on the card")
    parser.add_argument('-l',help='how many bytes you want to read in')
    args = parser.parse_args(arguments)
    
    if sys.platform == 'win32':
        argument_string =( 
            'C:/Users/butler/Documents/GitHub/FPGA_API/Xilinx_Answer_65444_Windows_Files/x64/bin/xdma_rw.exe '
            + 'c2h_1 ' +
            'read ' + 
            str(args.a) +
            ' -l ' +
            str(args.l)  
    )
    elif sys.platform == 'linux':
        print('on linux')
    subprocess.Popen(argument_string)

#=======================================================================================================================================================

else:
    print('command not found')
    