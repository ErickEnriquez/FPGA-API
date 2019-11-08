#include <iostream>
#include <string>


using namespace std;


int main(int argc, char** argv){

    FILE * fp;

    fp = fopen(argv[1],"rb");//open file to read
    if(fp == NULL)
        cout<<"Error opening file";
    
    char* peripheral  = argv[2];//get the peripheral that we want to send to 
    
    return 0;
}