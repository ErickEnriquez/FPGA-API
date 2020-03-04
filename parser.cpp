#include <iostream>
#include <string>
#include <stdlib.h>
#include <fstream>

#define DDR4 0x80000000                // Base DMA
#define UART_BASE 0x44A01000           // BaseUART
#define UART_STATUS_CONTROL 0x44A02000 //
#define ETHERNET 0x00000000            //placeholder
#define USB 0x00000000                 //placeholder

/*What wae are going to need in order to make a successful host to card or card to host transfer transfer is 
-d DEVICE
-f FILE TO BE TRANSFERED
-s SIZE OF THE FILE
-a ADDRESS OFFSET
-c TRANSFER COUNT
*/

using namespace std;

void parser(int, string *);
void transfer(char *fileName, string peripheral);
void read(char *fileName);
void deleter(char *fileName);
void helper();
int string_splitter(string, string *);
void print_error();

int main(int argc, char **argv)
{
    string end;
    string running_input;
    string *input_buffer = new string[3];
    for (int i = 1; i < argc; i++)
    {
        input_buffer[i - 1] = argv[i];
    }
    argc--;
    do
    {
        if (argc >= 1 && argc <= 3)
            parser(argc, input_buffer);
        else
            helper();                                        //print the info
        getline(cin, running_input, '\n');                   //get user input
        argc = string_splitter(running_input, input_buffer); //split the input

        end = input_buffer[0];
    } while (end != "QUIT" && end != "Quit" && end != "quit");
    return 0;
}

void parser(int argc, string *argv)
{
    if (argv[0] == "HELP")
        helper();
    else if (argv[0] == "delete")
    {
        char *file_name = new char[argv[1].size() + 1];
        strncpy(file_name, argv[1].c_str(), argv[1].size());
        deleter(file_name);
    }
    else if (argv[0] == "dma_to_device")
    {
        if (argv[1].empty() == false)
        {
            if (argv[2].empty() == false)
            { //if we have a valid dma from host to card transfer
            }
            else
                print_error();
        }
        else
            print_error();
    }
    else if (argv[0] == "dma_from_device")
    {
        if (argv[1].empty() == false)
        {
            if (argv[2].empty() == false)
            { //if we have a valid dma from card to host transfer
            }
            else
                print_error();
        }
        else
            print_error();
    }
    else
        print_error();
}

void transfer(char *fileName, string port)
{
    //Code for finding the file path & processing the file goes here
    FILE *transferFile; //Pointer to the File

    transferFile = fopen(fileName, "rb"); //open up a file in order to read in binary
    if (transferFile == NULL)
    { // if file does not exist
        cout << "ERROR OPENING FILE\n";
        helper();
        exit(0);
    }
    else
    {
    }
}

void read(char *fileName)
{
    //Code for finding the file in the FPGA & retrieving goes here
    FILE *fileData;

    fileData = fopen(fileName, "wb"); //open a file in order to write to disk
    if (fileData == NULL)
    { //if file can't be opened
        cout << "ERROR OPENING FILE\n";
        helper();
        exit(0);
    }
    // if file does not exist
    cout << "file not found" << endl;
}

void deleter(char *fileName)
{
    if (remove(fileName) == 0) //if remove function returns 0 file was removed else there was an error
        cout << "File removed successfully\n";
    else
        cout << "file not found. Deletion unsuccessful" << endl;
}
void helper()
{
    cout << "The following commands can be passed to the command-line interface:" << endl;
    cout << "To transfer file from PC to FPGA card: 'dma_to_device' 'file_name' 'Device Address' " << endl;
    cout << "To transfer files from FPGA to DMA : dma_from_device 'file_name' 'Device Address' " << endl;
    cout << "To delete a file: 'delete' 'file name'" << endl;
    cout << "Type QUIT to quit." << endl;
    cout << "Type HELP to repeat this" << endl;
    cout << "Device Addresses" << endl;
    printf("DDR4 : Is at address 0x%08X \n", DDR4);
    printf("UART_BASE : Is at address 0x%08X \n", UART_BASE);
    printf("UART_STATUS_CONTROL : Is at address 0x%08X \n", UART_STATUS_CONTROL);
    printf("Ethernet : Is at address 0x%08X \n", ETHERNET);
    printf("USB : Is at address 0x%08X \n", USB);
}

//helper function to split a string by newline characters
int string_splitter(string input, string *array)
{
    int index = 0;
    string temp = "";
    for (int i = 0; i <= input.size(); i++)
    {
        if (input[i] == ' ' || i == input.size())
        {
            array[index] = temp;
            temp = "";
            index++;
        }
        else
            temp = temp + input[i];
    }
    return index;
}

void print_error()
{
    cout << "ERROR INVALID ARGUMENTS \n\n";
    helper();
}