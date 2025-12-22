#include <iostream>
using namespace std;

int main()
{
	int nFirstNumber, nSecondNumber;
	cout << "Enter two numbers: ";
	cin >> nFirstNumber >> nSecondNumber;
	cout << endl << endl;

	//show options
	if (nSecondNumber == 0) {
		cout << "Error : Unable to divide by zero!\n";
	}
	else
	{
		cout << "Choose one of the following options:\n";
		cout << "(1)   Addition\n";
		cout << "(2)   Subtraction\n";
		cout << "(3)   Multiplication\n";
		cout << "(4)   Division\n";
		cout << "(5)   Modulo\n";
		cout << "(6)   All\n";
		cout << endl;


		//show resultes
		cout << nFirstNumber << " + " << nSecondNumber << " = " << nFirstNumber + nSecondNumber << endl;
		cout << nFirstNumber << " - " << nSecondNumber << " = " << nFirstNumber - nSecondNumber << endl;
		cout << nFirstNumber << " * " << nSecondNumber << " = " << nFirstNumber * nSecondNumber << endl;
		cout << nFirstNumber << " / " << nSecondNumber << " = " << nFirstNumber / nSecondNumber << endl;
		cout << nFirstNumber << " % " << nSecondNumber << " = " << nFirstNumber % nSecondNumber << endl;
	}

}
