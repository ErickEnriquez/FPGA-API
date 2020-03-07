#ifdef __WIN32
    #include <Windows.h>               //strncpy
#elif __linux__
    //any linux specific libraries
#endif

#include <iostream>
#include <string>
#include <stdlib.h>
#include <fstream>
#include <algorithm>    // std::transform


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
void dma_to_device(char *fileName, unsigned long Address);
void dma_from_device(char *fileName , unsigned long Address);
void deleter(char *fileName);
int string_splitter(string, string *);
bool string_case_compare(string , string);
unsigned long check_address(string);
void print_error();
void helper();

int main(int argc, char **argv)
{
    string running_input;
    string *input_buffer = new string[3];//buffer to hold user commands
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
    } while (string_case_compare("Quit",input_buffer[0]) == false);
    return 0;
}

void parser(int argc, string *argv)
{
    if (string_case_compare("help",argv[0]) == true)
        helper();
    else if (string_case_compare("delete",argv[0]) == true)
    {
        char *file_name = new char[argv[1].size() + 1];
        strncpy(file_name, argv[1].c_str(), argv[1].size());//copy the string to a Cstring
        deleter(file_name);
    }
    else if (string_case_compare("dma_to_device",argv[0]) == true)
    {
        if (argv[1].empty() == false)
        {
            if (argv[2].empty() == false)
            { //if we have a valid dma from host to card transfer
                unsigned long Address = check_address(argv[2]);
                char* filename = new char[argv[1].size() + 1];
                strncpy(filename, argv[1].c_str(), argv[1].size());//copy the string to a Cstring
                dma_to_device(filename,Address);
            }
            else
                print_error();
        }
        else
            print_error();
    }
    else if (string_case_compare("dma_from_device",argv[0]) == true)
    {
        if (argv[1].empty() == false)
        {
            if (argv[2].empty() == false)
            { //if we have a valid dma from card to host transfer
              unsigned long Address = check_address(argv[2]);
                char* filename = new char[argv[1].size() + 1];
                strncpy(filename, argv[1].c_str(), argv[1].size());//copy the string to a Cstring
                dma_from_device(filename,Address);
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

void dma_to_device(char *fileName, unsigned long Address)
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

void dma_from_device(char *fileName , unsigned long Address)
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
    cout << "\n\n";
    cout << "The following commands can be passed to the command-line interface:" << endl;
    cout << "To transfer file from PC to FPGA card : 'dma_to_device' 'file_name' 'Device Address' " << endl;
    cout << "To transfer files from FPGA to PC : 'dma_from_device' 'file_name' 'Device Address' " << endl;
    cout << "To delete a file : 'delete' 'file name'" << endl;
    cout << "Type QUIT to quit." << endl;
    cout << "Type HELP to repeat this" << endl;
    cout << "\nCommon Device Addresses" << endl;
    printf("DDR4 : Is at address 0x%08X \n", DDR4);
    printf("UART_BASE : Is at address 0x%08X \n", UART_BASE);
    printf("UART_STATUS_CONTROL : Is at address 0x%08X \n", UART_STATUS_CONTROL);
    printf("ETHERNET : Is at address 0x%08X \n", ETHERNET);
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
    cout << "\n\nERROR INVALID ARGUMENTS \n\n";
    helper();
}

//helper function doing case insensitive comparision
bool string_case_compare(string s1, string s2){
	transform(s1.begin(), s1.end(), s1.begin(), ::toupper);
    transform(s2.begin(), s2.end(), s2.begin(), ::toupper);
    if( s1 == s2)
        return true;
    else
        return false;
}

unsigned long check_address(string s1){
    if(string_case_compare(s1,"DDR4") == true)
        return DDR4;
    else if(string_case_compare(s1,"UART_BASE") == true)
        return UART_BASE;
    else if(string_case_compare(s1,"UART_STATUS_CONSTROL") == true)
        return UART_STATUS_CONTROL;
    else if(string_case_compare(s1,"ETHERNET") == true)
        return ETHERNET;
    else if(string_case_compare(s1,"USB") == true)
        return USB;
    else
        return stoul(s1,nullptr,10);//convert the string to an unsigne long
}