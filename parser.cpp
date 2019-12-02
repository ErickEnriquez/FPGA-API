#include <iostream>
#include <string>


using namespace std;

int main()
{
    string command, file;

    cout << "The following commands can be passed to the command-line interface:" << endl;
    cout << "To transfer file from PC to FPGA card: transfer 'file name'" << endl;
    cout << "To access files in the DMA: read 'file name'" << endl;
    cout << "To delete a file: delete 'file name'" << endl;

    cout << endl << "Enter your command" << endl;
    cin >> command;
    getline(cin, file);

    if (command.compare("transfer") == 0 && file.length() != 0)
    {

        /**Code for the operations goes here**/

        // if file does not exist
        cout << "file not found. transfer unsuccessful" << endl;
    }
    else if (command.compare("read") == 0 && file.length() != 0) // opens a file for reading
    {
        /**Code for the operations goes here**/

        cout << "file not found" << endl;
    }
    else if (command.compare("delete") == 0 && file.length() != 0)
    {
        /**Code for the operations goes here**/

        cout << "file not fount. deletion unsuccessful" << endl;
    }
    else
    {
        cout << "invalid command!" << endl;
    }



    return 0;
}

