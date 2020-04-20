import subprocess

#this is example 1 from uart 16550 user guide


WindowsPathToXdma = 'C:/Users/butler/Documents/GitHub/FPGA_API/Xilinx_Answer_65444_Windows_Files/x64/bin/xdma_rw.exe '
LinuxPathToXdma = 'Linux-PCIe-DMA-Driver/XDMA/linux-kernel/tools/dma_to_device '


uart_base_address = 0x44A01000
#uart_line_control_register  = hex(uart_base_address + 0x100C)
#uart_divisor_latch_lsb = hex(uart_base_address + 0x1000)
#uart_divisor_latch_msb = hex(uart_base_address + 0x1004)
#uart_interupt_enable_register = hex(uart_base_address + 0x1004)

uart_reciever_buffer = hex(uart_base_address + 0x1000)
uart_transfer_buffer = hex(uart_base_address + 0x1000)
uart_interupt_register = hex(uart_base_address + 0x1004 )
uart_fifo_control = hex(uart_base_address + 0x1008)
uart_line_control_register  = hex(uart_base_address + 0x100C)


'''
UART basic setup (default baud rate 9600)

0x1000    RB            \x00000000
0x1000    TH            \x00000000
0x1004    INT            \x00000003 #enable transmit holding empty and received data available interrtups

#fifo trigger level of 14 bytes, DMAMode 0, reset all FIFO's, enable FIFO's
0x1008    FIFO CNTL    \x000000c7

# bit7 = 0, disable break, disable stick parity, enable even parity, 1 stop bit, 8b word length
#0x100c    LCR            \x0000001b
'''
write1 = "0x00 " + "0x00 " + "0x00 " + "0x00 " #write into line control register
write2 = "0x00 " + "0x00 " + "0x00 " + "0x00 " #write into least sig 
write3 = "0x00 " + "0x00 " + "0x00 " + "0x03 " #write into most sig
write4 = "0x00 " + "0x00 " + "0x00 " + "0xc7 " # This configures word length to 8 bits,number of stop bits to 2, parity is enabled and set to even parity and the DLAB bit is set to 0 to enable the use of the Transmitter Holding register and Receiver Buffer register data for transmission and reception
write5 = "0x00 " + "0x00 " + "0x00 " + "0x1b " #Write 0x0000_0011 to the Interrupt Enable register. This enables the Transmitter Holding register empty interrupt and the receive data available interrupt

args = WindowsPathToXdma + 'h2c_1 ' + 'write ' 
def setup_uart():
    temp = args + str(uart_reciever_buffer) + " " +  write1
    p1 = subprocess.Popen(temp)
    p1.wait()
    temp = args + str(uart_transfer_buffer) + " " +  write2
    p1 = subprocess.Popen(temp)
    p1.wait()
    temp = args + str(uart_interupt_register) + " " +  write3
    p1 = subprocess.Popen(temp)
    p1.wait()
    temp = args + str(uart_fifo_control) + " " +  write4
    p1 = subprocess.Popen(temp)
    p1.wait()
    temp = args + str(uart_interupt_register) + " " +  write5
    p1 = subprocess.Popen(temp)
    p1.wait()
