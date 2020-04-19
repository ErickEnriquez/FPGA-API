import subprocess

#this is example 1 from uart 16550 user guide


WindowsPathToXdma = 'C:/Users/butler/Documents/GitHub/FPGA_API/Xilinx_Answer_65444_Windows_Files/x64/bin/xdma_rw.exe '
LinuxPathToXdma = 'Linux-PCIe-DMA-Driver/XDMA/linux-kernel/tools/dma_to_device '


uart_base_address = 0x44A01000
uart_line_control_register  = hex(uart_base_address + 0x100C)
uart_divisor_latch_lsb = hex(uart_base_address + 0x1000)
uart_divisor_latch_msb = hex(uart_base_address + 0x1004)
uart_interupt_enable_register = hex(uart_base_address + 0x1004)


write1 = "0x00 " + "0x00 " + "0x00 " + "0x80 " #write into line control register
write2 = "0x00 " + "0x00 " + "0x00 " + "0x6F " #write into least sig 
write3 = "0x00 " + "0x00 " + "0x00 " + "0x00 " #write into most sig
write4 = "0x00 " + "0x00 " + "0x00 " + "0x1F " # This configures word length to 8 bits,number of stop bits to 2, parity is enabled and set to even parity and the DLAB bit is set to 0 to enable the use of the Transmitter Holding register and Receiver Buffer register data for transmission and reception
write5 = "0x00 " + "0x00 " + "0x00 " + "0x11 " #Write 0x0000_0011 to the Interrupt Enable register. This enables the Transmitter Holding register empty interrupt and the receive data available interrupt

args = WindowsPathToXdma + 'h2c_1 ' + 'write ' 
def setup_uart():
    temp = args + str(uart_line_control_register) + " " +  write1
    p1 = subprocess.Popen(temp)
    p1.wait()
    temp = args + str(uart_divisor_latch_lsb) + " " +  write2
    p1 = subprocess.Popen(temp)
    p1.wait()
    temp = args + str(uart_divisor_latch_msb) + " " +  write3
    p1 = subprocess.Popen(temp)
    p1.wait()
    temp = args + str(uart_line_control_register) + " " +  write4
    p1 = subprocess.Popen(temp)
    p1.wait()
    temp = args + str(uart_interupt_enable_register) + " " +  write5
    p1 = subprocess.Popen(temp)
    p1.wait()
