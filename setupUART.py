import subprocess
import sys

WindowsPathToXdma = 'C:/Users/butler/Documents/GitHub/FPGA_API/Xilinx_Answer_65444_Windows_Files/x64/bin/xdma_rw.exe '
LinuxPathToXdma = 'Linux-PCIe-DMA-Driver/XDMA/linux-kernel/tools/dma_to_device '


uart_base_address = 0x44A01000



setup_write = ' 0x00 ' +'0x00 '+'0x00 '+'0x00 '+'0x03 '+'0x00 '+'0x00 '+'0x00 '+'0xc7 '+'0x00 '+'0x00 '+'0x00 '+'0x1b '+'0x00 '+'0x00 '+'0x00'

def setup_uart():
    if sys.platform == 'win32':
     args = WindowsPathToXdma + 'h2c_1 ' + 'write '  + str(uart_base_address) + setup_write
     print(args)

