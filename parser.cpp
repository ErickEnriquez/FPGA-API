#include <iostream>
#include <string>


using namespace std;


int main(int argc, char** argv){
    cout<<"NUMBER OF ARG = " << argc <<"\n";
    for(int i = 1; i < argc ;i++){
        cout<< argv[i] << "\n";
    }
    cout<<"TESTING\n";

    return 0;
}