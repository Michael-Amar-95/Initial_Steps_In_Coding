#include <iostream>
using namespace std;

int main()
{
	int nNumber;
	int nUnityDigit;
	int nTensDigit;
	int nHundredDigit;

	cout << "Input: \n";
	cin >> nNumber;

	nUnityDigit = (nNumber / 100);
	nTensDigit = (10* ( (nNumber / 10) %10));
	nHundredDigit = (100 * (nNumber % 10));

	cout << "Output: " << nUnityDigit + nTensDigit + nHundredDigit << endl;

}
