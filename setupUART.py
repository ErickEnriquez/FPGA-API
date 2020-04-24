import subprocess
import sys

WindowsPathToXdma = 'C:/Users/butler/Documents/GitHub/FPGA_API/Xilinx_Answer_65444_Windows_Files/x64/bin/xdma_rw.exe '
LinuxPathToXdma = 'Linux-PCIe-DMA-Driver/XDMA/linux-kernel/tools/dma_to_device '



def setup_uart():

    uart_base_address = 0x44A01000

    uart_line_control =  0x440a100c

    write1 = ' 0x00 ' + '0x00 ' + '0x00 ' + '0x00 '
    write2 = '0x00 ' + '0x00 ' + '0x00 ' + '0x03 '
    write3 = '0x00 '  + '0x00 ' + '0x00 ' + '0xC7 '
    write4 = '0x00 '  + '0x00 ' + '0x00 ' + '0x1B '

    total_write = write1  +write2 + write3 + write4
    

    if sys.platform == 'win32':
        #args = WindowsPathToXdma + 'h2c_1 ' + 'write '  + str(uart_base_address) + total_write
        args = WindowsPathToXdma + 'h2c_1 ' + 'write '  + str(uart_line_control) + " " + write4
        p1 = subprocess.Popen(args)
        p1.wait()
        print('WRITE ' , write4 , ' to location ' , uart_line_control)
     

