#include <iostream>
#include <string>
#include <stdlib.h>
#include <fstream>


using namespace std;

void parser(int, char**);
void transfer(char* fileName, string port);
void read(char* fileName);
void deleter(char* fileName);
void helper();


int main(int  argc , char ** argv){

    if (argc < 2 || argc > 4){//if a user enters too few or too many arguments
        helper();
        return 0;
    }
    else
        parser(argc,argv);

    FILE * fp;

    fp = fopen(argv[1],"rb");//open file to read
    if(fp == NULL)
        cout<<"Error opening file";
    
    char* peripheral  = argv[2];//get the peripheral that we want to send to 
    
    return 0;
}

 void parser(int argc , char** argv){
   
   string command = argv[1];
    if (argc == 2){
        if (command == "QUIT")
            exit(0);
        else if(command == "HELP")
            helper();
        else{
            cout << "INVALID\n";
            helper();
            exit(0);            
        }

    }
    else if(argc == 3){
        if(command == "delete"){
            deleter(argv[2]);
        }
        else{
            cout << "INVALID ARGUEMENTS\n";
            helper();
        }
    }
    else if(argc == 4){
        if(command  == "transfer"){
            string port = argv[3];//port number
            transfer(argv[2],port);
        }
        else if(command == "read"){
            read(argv[2]);
        }
        else{
            cout <<"INVALID:\n";
            helper();
            exit(0);
        }
    }
    else{
        cout << "INVALID command\n";
        helper();
    }
 }

    

 void transfer(char* fileName, string port){
     //Code for finding the file path & processing the file goes here
        FILE* transferFile; //Pointer to the File

        transferFile = fopen(fileName,"rb");//open up a file in order to read in binary
        if(transferFile == NULL){// if file does not exist
            cout << "ERROR OPENING FILE\n";
            helper();
            exit(0);

        }
     

 }

 void read(char* fileName){
     //Code for finding the file in the FPGA & retrieving goes here
    FILE* fileData;
    
    fileData = fopen(fileName,"wb");//open a file in order to write to disk
    if(fileData == NULL){//if file can't be opened
            cout << "ERROR OPENING FILE\n";
            helper();
            exit(0);
    }
     // if file does not exist
     cout << "file not found" << endl;


 }

 void deleter(char* fileName){
     //Code for finding the file and deleting goes here

     if(remove(fileName) == 0)//if remove function returns 0 file was removed else there was an error
        cout << "File removed successfully\n";
    else
         cout << "file not found. Deletion unsuccessful" << endl;

 }
 void helper(){
        cout << "The following commands can be passed to the command-line interface:" << endl;
        cout << "To transfer file from PC to FPGA card: transfer 'file name'" << endl;
        cout << "To access files in the DMA: read 'file name'" << endl;
        cout << "To delete a file: delete 'file name'" << endl;
        cout << "Type QUIT to quit.";
        cout << "Type HELP to repeat this";
        //parser();
}