from tkinter import *
from tkinter import filedialog
import os
import subprocess
import os
import sys
import binascii

class GUI():
    def __init__(self):
        self.root = Tk()
        self.filename = ""
        self.hexOption = IntVar()

        self.errorMessage = StringVar()
        self.errorLabel = Label(self.root,textvariable=self.errorMessage)
    
        title = Label(self.root, text="Select the mode you want to perfrom a transfer")
        fileNameLabel = Label(self.root,text='File Name')
        addressLabel = Label(self.root,text="Address to read/write default is decimal , select option for hex")
       

        self.transfer_choice = StringVar()

        outputfile = Entry(self.root,text=self.filename,width=50)
        self.output = outputfile

        self.addressBox = Entry(self.root,width=50)

        button1 = Button(self.root, text="Browse", command=self.open)
        button2 = Button(self.root, text="Perform transfer", command=self.perfrom_transfer)
        button3 = Button(self.root, text="Quit", command=self.root.quit)

        radio1 = Radiobutton(self.root, text='host to card', value = 'h2c' , variable=self.transfer_choice)
        radio2 = Radiobutton(self.root,text='card to host', value = 'c2h', variable = self.transfer_choice)
        radioHexOption = Radiobutton(self.root,text='Address in hex', value =1, variable=self.hexOption)

        radio1.grid(column=0,row=1)
        radio2.grid(column=0,row=2)
        title.grid(column=1,row=0)
        outputfile.grid(column=1,row=2)
        self.errorLabel.grid(column=1,row=6)
        button1.grid(column=2,row=2)
        button2.grid(column=2,row=5)
        button3.grid(column=3,row=5)
        
    
        self.addressBox.grid(column =1,row=4)
        radioHexOption.grid(column=2,row=4)
        fileNameLabel.grid(column=1,row=1)
        addressLabel.grid(column=1,row=3)


        

        self.root.mainloop()


    def open(self):
        result = filedialog.askopenfilename()
        self.filename = result
        self.output.delete(0,END)
        self.output.insert(0,result)
        

    def perfrom_transfer(self):
        if self.transfer_choice.get() == 'h2c' and self.filename != "":
            self.errorMessage.set('') # clear the error message
            print(self.filename,self.addressBox.get())
            
        elif self.transfer_choice.get() == 'c2h' and self.filename != "":
            self.errorMessage.set('') # clear the error message
            print('c2h')
        else:
            self.errorMessage.set('Error, please check you have selected a file and a transfer method')
    
GUI()