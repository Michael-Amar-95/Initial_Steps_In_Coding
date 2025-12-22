#include <iostream>
using namespace std;

//check the value of the number
int value(int x, int y)
{
	while (x < 0)
	{
		switch (y)
		{
		case 1: cout << "Please enter first number:\n";
			break;
		case 2: cout << "Please enter second number:\n";
			break;
		case 3: cout << "Please enter third number:\n";
			break;
		case 4: cout << "Please enter fourth number:\n";
			break;
		case 5: cout << "Please enter fifth number:\n";
			break;
		}
		cin >> x;
	}
	return x;
}

//printing the number
void print (int x)
{
	for (int i = 1; i <= x; i++)
		{
			cout << "\t" << i;
		}
		cout << endl;
}

int main()
{
	int nFirstNum;
	int nSecondNum;
	int nThirdNum;
	int nFourthNum;
	int nFifthNum;

	cout << "Please enter first number:\n";
	cin >> nFirstNum;
	nFirstNum = value(nFirstNum, 1);
	cout << "Please enter second number:\n";
	cin >> nSecondNum;
	nSecondNum = value(nSecondNum, 2);
	cout << "Please enter third number:\n";
	cin >> nThirdNum;
	nThirdNum = value(nThirdNum, 3);
	cout << "Please enter fourth number:\n";
	cin >> nFourthNum;
	nFourthNum = value(nFourthNum, 4);
	cout << "Please enter fifth number:\n";
	cin >> nFifthNum;
	nFifthNum = value(nFifthNum, 5);
	 
	print (nFirstNum);
    print (nSecondNum);
	print (nThirdNum);
	print (nFourthNum);
	print (nFifthNum);

}
