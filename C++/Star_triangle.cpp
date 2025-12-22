#include <iostream>
using namespace std;

// Declaration function
int IsEven (int x);
void PrintSpaces (int x, int nYourNum);
void PrintStares (int x, int nYourNum);
void Triangle (int x, int nYourNum);

int main()
{
	int nYourNum;

	do
	{
		cout << "Please enter number for base of triangle (odd only!) :\n";
		cin >> nYourNum;
	}
	while (IsEven(nYourNum) == 0);
	
	Triangle(1 , nYourNum);
}

// checking if the number is good
int IsEven(int x)
{
	if ((x < 1) || ((x % 2) == 0))
	{	
		return 0;
	}
	else
	{
		return 1;
	}
}

//function that print space
void PrintSpaces( int x, int nYourNum)
{
	for ( x ; x < nYourNum ; x+=2)
	{
		cout << " ";
	}
}

//function that print stars
void PrintStares(int x, int nYourNum)
{
		int b = 1;

		while (b <= x)
		{
			cout << "*";
			b += 1;
		}
}
//build the triangle
void Triangle(int x , int nYourNum)
{
	for ( x=1 ; x <= nYourNum ; x += 2)
	{
		PrintSpaces(x, nYourNum);
		PrintStares(x, nYourNum);
		cout << endl;
	}

}
