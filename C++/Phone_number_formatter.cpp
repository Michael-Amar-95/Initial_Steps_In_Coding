#include <iostream>
using namespace std;

int main()
{
	int nPhoneNumber;
	int nRealNumber;
	int nAreaCode;

	cout << "Input: \n";
	cin >> nPhoneNumber;

	nRealNumber = nPhoneNumber % 10000000;
	nAreaCode = nPhoneNumber / 10000000;
	
	cout << "Output: 0" << nAreaCode << "-"<< nRealNumber << endl;

}
