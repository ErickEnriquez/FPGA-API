from tkinter import *
from tkinter import filedialog
import os
import subprocess
import os
import sys
import binascii
import time
from setupUART import setup_uart


WindowsPathToXdma = 'C:/Users/butler/Documents/GitHub/FPGA_API/Xilinx_Answer_65444_Windows_Files/x64/bin/xdma_rw.exe '
LinuxPathToXdma = 'Linux-PCIe-DMA-Driver/XDMA/linux-kernel/tools/dma_to_device '

MAX_BUFFER_SIZE = 5242880 # 5 MB which is size of Xdma buffer

class GUI():
    def __init__(self):
        self.root = Tk()
        self.filename = ""
        self.hexOption = IntVar()

        self.errorMessage = StringVar()
        self.errorLabel = Label(self.root,textvariable=self.errorMessage)
    
        title = Label(self.root, text="Select the mode you want to perfrom a transfer")
        fileNameLabel = Label(self.root,text='File Name')
        addressLabel = Label(self.root,text="Address to read/write default is decimal by default , select option for hex")
        lengthLabel = Label(self.root,text='Enter the number of bytes you want to read')
        destinationLabel = Label(self.root,text='Destination Filename')

        self.transfer_choice = StringVar()

        self.outputfile = Entry(self.root,text=self.filename,width=50)
        self.output = self.outputfile

        self.addressBox = Entry(self.root,width=50)
        self.lengthBox = Entry(self.root,width=50)

        self.destinationFile = Entry(self.root,width=50)

        self.button1 = Button(self.root, text="Browse", command=self.open)
        button2 = Button(self.root, text="Perform transfer", command=self.parse_input)
        button3 = Button(self.root, text="Quit", command=self.root.quit)

        radio1 = Radiobutton(self.root, text='host to card', value = 'h2c' , variable=self.transfer_choice, command=self.host_to_card)
        radio2 = Radiobutton(self.root,text='card to host', value = 'c2h', variable = self.transfer_choice, command=self.card_to_host)
        checkBoxHexOption = Checkbutton(self.root,text='Address in hex', variable=self.hexOption)

        radio1.grid(column=0,row=1)
        radio2.grid(column=0,row=2)
        title.grid(column=1,row=0)
        self.outputfile.grid(column=1,row=2)
        self.errorLabel.grid(column=1,row=10)
        self.button1.grid(column=2,row=2)
        button2.grid(column=2,row=9)
        button3.grid(column=3,row=9)
        
    
        self.addressBox.grid(column =1,row=4)
        checkBoxHexOption.grid(column=2,row=4)
        fileNameLabel.grid(column=1,row=1)
        addressLabel.grid(column=1,row=3)
        lengthLabel.grid(column=1,row=5)
        self.lengthBox.grid(column=1,row=6)
        self.destinationFile.grid(column=1,row=8)
        destinationLabel.grid(column=1,row=7)

        self.root.mainloop()


    def open(self):
        result = filedialog.askopenfilename()
        self.filename = result
        self.output.delete(0,END)
        self.output.insert(0,result)
        

    #disables the data length box when doing host to card transfers as it is not needed
    def host_to_card(self):
        self.outputfile.config(state='normal')
        self.button1.config(state='normal')
        self.lengthBox.config(state='disabled')
        self.destinationFile.config(state='disabled')

    #disables the file and the browse buttons when doing carrd to host transfers to help user
    def card_to_host(self):
        self.destinationFile.config(state='normal')
        self.lengthBox.config(state='normal')
        self.outputfile.config(state='disabled') #disable the filename entry
        self.button1.config(state='disabled')

    def parse_input(self):
        if self.transfer_choice.get() == 'h2c' and self.filename != "":
            self.errorMessage.set('') # clear the error message
            self.xdma_transfer_to_card()#call the function that will do the xdma transfer
        elif self.transfer_choice.get() == 'c2h' and self.addressBox.get() != "" and self.lengthBox.get() != "":
            self.errorMessage.set('') # clear the error message
            self.xdma_transfer_from_card()
        else:
            self.errorMessage.set('Error, please ensure you have filled in all fields')

    def xdma_transfer_to_card(self):
        if self.hexOption.get() == 1: #hex was selected
            address= int(self.addressBox.get(),0)
        else:
            address = int(self.addressBox.get())
        fp = open(self.filename,'rb')
        print('TOTAL NUMBER OF BYTES IS ',os.path.getsize(self.filename))
        while True:
            data = fp.read(MAX_BUFFER_SIZE) #read 5 MB
            if not data:
                break
            with open('data.bin','wb') as temp: #write 5MB to proxy file
                temp.write(data)
            if sys.platform == 'win32':
                args = WindowsPathToXdma + 'h2c_1 '  + 'write ' + str(address) + ' -f ' + 'data.bin ' + '-b' #create the args to pass to xdma
                address = address + len(data)#update the address
                p1 =subprocess.Popen(args)#call the xdma driver
                p1.wait()
        fp.close()
        temp.close()
        os.remove('data.bin')#clean up proxy file

    def xdma_transfer_from_card(self):
        if self.hexOption.get() == 1: #hex was selected
            address= int(self.addressBox.get(),0)
        else:
            address = int(self.addressBox.get())
        transfers_to_complete =   int(self.lengthBox.get())/MAX_BUFFER_SIZE #get the number of 5MB transfers we have to do
        remainder =  MAX_BUFFER_SIZE %  int(self.lengthBox.get()) #get the number of remainder we have to get
        transfers_to_complete = int(transfers_to_complete)

        if transfers_to_complete == 0: #if we only have small file to do in 1 pass
            args = WindowsPathToXdma + 'c2h_1 ' + 'read ' + str(address) + ' -l '  + str(self.lengthBox.get())  +' -f ' + self.destinationFile.get() + ' -b'
            p1 = subprocess.Popen(args)
        else:
            for i in range(0,transfers_to_complete): #create as many transfers as needed
                with open(self.destinationFile.get(),'ab') as fp:
                    if sys.platform =='win32':
                        args = WindowsPathToXdma + 'c2h_1 ' + 'read ' + str(address) + ' -l '  + str(MAX_BUFFER_SIZE)  +' -f ' + 'output.bin ' + '-b' #read 5MB
                        address = address + MAX_BUFFER_SIZE
                        p1 = subprocess.Popen(args)
                        p1.wait()
                        with open('output.bin','rb') as temp:
                            fp.write(temp.read(MAX_BUFFER_SIZE))

            if remainder != 0: #if we have a remainder to do
                args = WindowsPathToXdma + 'c2h_1 ' + 'read ' + str(address) + ' -l '  + str(remainder)  +' -f ' + 'output.bin ' + '-b' #read reamaining bytes
                with open(self.destinationFile.get(),'ab') as fp:
                    with open('output.bin','rb') as temp:
                        fp.write(temp.read(remainder))

        print('done')
        os.remove('output.bin')#clean up proxy file

        
#setup_uart() #setup the uart
this_dir = os.path.dirname(os.path.abspath(__file__))
if sys.platform == 'win32':    
    WindowsPathToXdma = os.path.join(this_dir, 'Xilinx_Answer_65444_Windows_Files', 'x64', 'bin', 'xdma_rw.exe')
elif sys.platform == 'linux':
    LinuxPathToXdma = os.path.join(this_dir, 'Linux-PCIe-DMA-Driver/XDMA/linux-kernel/tools/ ')
#print(WindowsPathToXdma) 
GUI()   #call the gui