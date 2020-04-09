#ifdef __WIN32
#include <Windows.h> //strncpy
#include <tchar.h>
#elif __linux__
//any linux specific libraries
#include <unistd.h>    // fork()
#include <sys/types.h> // for pid_t
#include <sys/wait.h>  //for wait()
#include <errno.h>     //printing errors
#endif

#include <string>
#include <iostream>
#include <string.h>
#include <stdlib.h>
#include <fstream>
#include <algorithm> // std::transform

#define DDR4 0x80000000                // Base DMA
#define UART_BASE 0x44A01000           // BaseUART
#define UART_STATUS_CONTROL 0x44A02000 //
#define ETHERNET 0x00000000            //placeholder
#define USB 0x00000000                 //placeholder

#define LINUX_TO_DEVICE "/Linux-PCIe-DMA-Driver/tools/dma_to_device"
#define LINUX_FROM_DEVICE "/Linux-PCIe-DMA-Driver/tools/dma_from_device"
#define WINDOWS_TO_DEVICE ""
#define WINDOWS_FROM_DEVICE ""

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
void dma_from_device(char *fileName, unsigned long Address);
void deleter(char *fileName);
int string_splitter(string, string *);
bool string_case_compare(string, string);
unsigned long check_address(string);
void print_error();
void helper();
void windows_transfer_from_card(char * file, unsigned long Address);
void windows_transfer_to_card(char* file, unsigned long Address);
void linux_transfer_to_card(char* filename , unsigned long address);
void linux_transfer_from_card(char* filename , unsigned long address);

int main(int argc, char **argv)
{
    string running_input;
    string *input_buffer = new string[3]; //buffer to hold user commands
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
    } while (string_case_compare("Quit", input_buffer[0]) == false);
    return 0;
}

void parser(int argc, string *argv)
{
    if (string_case_compare("help", argv[0]) == true)
        helper();
    else if (string_case_compare("delete", argv[0]) == true)
    {
        char *file_name = new char[argv[1].size() + 1];
        strncpy(file_name, argv[1].c_str(), argv[1].size()); //copy the string to a Cstring
        deleter(file_name);
    }
    else if (string_case_compare("dma_to_device", argv[0]) == true)
    {
        if (argv[1].empty() == false)
        {
            if (argv[2].empty() == false)
            { //if we have a valid dma from host to card transfer
                unsigned long Address = check_address(argv[2]);
                char *filename = new char[argv[1].size() + 1];
                strncpy(filename, argv[1].c_str(), argv[1].size()); //copy the string to a Cstring
                dma_to_device(filename, Address);
            }
            else
                print_error();
        }
        else
            print_error();
    }
    else if (string_case_compare("dma_from_device", argv[0]) == true)
    {
        if (argv[1].empty() == false)
        {
            if (argv[2].empty() == false)
            { //if we have a valid dma from card to host transfer
                unsigned long Address = check_address(argv[2]);
                char *filename = new char[argv[1].size() + 1];
                strncpy(filename, argv[1].c_str(), argv[1].size()); //copy the string to a Cstring
                dma_from_device(filename, Address);
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
    }
    else
    {
        fseek(transferFile, 0, SEEK_END);   //go the the end of the file
        int filesize = ftell(transferFile); //get the size of the file
        fseek(transferFile, 0, SEEK_SET);   //return to the top of the file in order to ensure we read correctly
        fclose(transferFile);
#ifdef __WIN32
        //use create_proccess() to call the driver
        

#elif __linux__

        
#endif
    }
}

void dma_from_device(char *fileName, unsigned long Address)
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
bool string_case_compare(string s1, string s2)
{
    transform(s1.begin(), s1.end(), s1.begin(), ::toupper);
    transform(s2.begin(), s2.end(), s2.begin(), ::toupper);
    if (s1 == s2)
        return true;
    else
        return false;
}

unsigned long check_address(string s1)
{
    if (string_case_compare(s1, "DDR4") == true)
        return DDR4;
    else if (string_case_compare(s1, "UART_BASE") == true)
        return UART_BASE;
    else if (string_case_compare(s1, "UART_STATUS_CONSTROL") == true)
        return UART_STATUS_CONTROL;
    else if (string_case_compare(s1, "ETHERNET") == true)
        return ETHERNET;
    else if (string_case_compare(s1, "USB") == true)
        return USB;
    else
        return stoul(s1, nullptr, 10); //convert the string to an unsigne long
}

void linux_transfer_to_card(char* filename , unsigned long address){
    #ifdef __linux__
    pid_t pid; //proccess id
        int ret = 1;
        int status;
        pid = fork();// create a forked proccess
        if (pid == -1)
        { //error occured
            printf("Error occured , couldn't fork\n");
            exit(EXIT_FAILURE);
        }
        else if (pid == 0)
        {
            printf("child proccess : %u started", getpid());
            // -d DEVICE
            // -f FILE TO BE TRANSFERED
            // -s SIZE OF THE FILE
            // -a ADDRESS OFFSET
            // -c TRANSFER COUNT
            char* size;
            char* addr;
            addr = (char*)malloc(sizeof(char*) * 8);//allocate the 8 bytes
            sprintf(addr,"%lu",Address);
            char* args[] = {"-d ", " -f ", fileName, " -s ", " -a ",addr , " -c ", NULL};
            execvp(DMA_TO_DEVICE_EXE,args);
        }
        else
        {
            //we get a positive number which corresponds to the pid of the parent proccess

            printf("parent process, pid = %u\n", getppid());

            // the parent process calls waitpid() on the child
            // waitpid() system call suspends execution of
            // calling process until a child specified by pid
            // argument has changed state
            // see wait() man page for all the flags or options
            // used here

            if (waitpid(pid, &status, 0) > 0)
            {
                if (WIFEXITED(status) && !WEXITSTATUS(status))
                    printf("program execution successful\n");
                else if (WIFEXITED(status) && WEXITSTATUS(status))
                {
                    if (WEXITSTATUS(status) == 127)
                    {
                        // execv failed
                        printf("execv failed\n");
                    }

                    else
                        printf("program terminated normally, but returned a non-zero status\n");
                }
                else
                    printf("program didn't terminate normally\n");
            }
            else
            {
                // waitpid() failed
                printf("waitpid() failed\n");
            }
            exit(0);
        }
    #endif
}

void linux_transfer_from_card(char* filename , unsigned long address){
    #ifdef __linux__
    pid_t pid; //proccess id
        int ret = 1;
        int status;
        pid = fork();// create a forked proccess
        if (pid == -1)
        { //error occured
            printf("Error occured , couldn't fork\n");
            exit(EXIT_FAILURE);
        }
        else if (pid == 0)
        {
            printf("child proccess : %u started", getpid());
            // -d DEVICE
            // -f FILE TO BE TRANSFERED
            // -s SIZE OF THE FILE
            // -a ADDRESS OFFSET
            // -c TRANSFER COUNT
            char* size;
            char* addr;
            addr = (char*)malloc(sizeof(char*) * 8);//allocate the 8 bytes
            sprintf(addr,"%lu",Address);
            char* args[] = {"-d ", " -f ", fileName, " -s ", " -a ",addr , " -c ", NULL};
            execvp(DMA_TO_DEVICE_EXE,args);
        }
        else
        {
            //we get a positive number which corresponds to the pid of the parent proccess

            printf("parent process, pid = %u\n", getppid());

            // the parent process calls waitpid() on the child
            // waitpid() system call suspends execution of
            // calling process until a child specified by pid
            // argument has changed state
            // see wait() man page for all the flags or options
            // used here

            if (waitpid(pid, &status, 0) > 0)
            {
                if (WIFEXITED(status) && !WEXITSTATUS(status))
                    printf("program execution successful\n");
                else if (WIFEXITED(status) && WEXITSTATUS(status))
                {
                    if (WEXITSTATUS(status) == 127)
                    {
                        // execv failed
                        printf("execv failed\n");
                    }

                    else
                        printf("program terminated normally, but returned a non-zero status\n");
                }
                else
                    printf("program didn't terminate normally\n");
            }
            else
            {
                // waitpid() failed
                printf("waitpid() failed\n");
            }
            exit(0);
        }
    #endif
}

void windows_transfer_to_card(char * file, unsigned long Address){
    #ifdef __WIN32
    STARTUPINFO si;
    PROCESS_INFORMATION pi;

    ZeroMemory( &si, sizeof(si) );
    si.cb = sizeof(si);
    ZeroMemory( &pi, sizeof(pi) );


    // Start the child process. 
    if( !CreateProcess( NULL,   // No module name (use command line)
        NULL,        // Command line args here NEED TO FILL IN
        NULL,           // Process handle not inheritable
        NULL,           // Thread handle not inheritable
        FALSE,          // Set handle inheritance to FALSE
        0,              // No creation flags
        NULL,           // Use parent's environment block
        NULL,           // Use parent's starting directory 
        &si,            // Pointer to STARTUPINFO structure
        &pi )           // Pointer to PROCESS_INFORMATION structure
    ) 
    {
        printf( "CreateProcess failed (%d).\n", GetLastError() );
        return;
    }

    // Wait until child process exits.
    WaitForSingleObject( pi.hProcess, INFINITE );

    // Close process and thread handles. 
    CloseHandle( pi.hProcess );
    CloseHandle( pi.hThread );
    #endif

}
void windows_transfer_from_card(char * file, unsigned long Address){
    #ifdef __WIN32
     STARTUPINFO si;
    PROCESS_INFORMATION pi;

    ZeroMemory( &si, sizeof(si) );
    si.cb = sizeof(si);
    ZeroMemory( &pi, sizeof(pi) );

  

    // Start the child process. 
    if( !CreateProcess( NULL,   // No module name (use command line)
        NULL,        // Command line args here as single string NEED TO FILL IN
        NULL,           // Process handle not inheritable
        NULL,           // Thread handle not inheritable
        FALSE,          // Set handle inheritance to FALSE
        0,              // No creation flags
        NULL,           // Use parent's environment block
        NULL,           // Use parent's starting directory 
        &si,            // Pointer to STARTUPINFO structure
        &pi )           // Pointer to PROCESS_INFORMATION structure
    ) 
    {
        printf( "CreateProcess failed (%d).\n", GetLastError() );
        return;
    }

    // Wait until child process exits.
    WaitForSingleObject( pi.hProcess, INFINITE );

    // Close process and thread handles. 
    CloseHandle( pi.hProcess );
    CloseHandle( pi.hThread );
    #endif
}