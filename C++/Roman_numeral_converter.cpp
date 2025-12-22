#include <iostream>
using namespace std;
int valid();
int classification(int x);
void Unitiy_Digit(int y);
void Tenz_Digit(int x);

int main()
{
	while (1)
	{
		int nNum = valid();
		if (classification(nNum) == 1)
		{
			Unitiy_Digit(nNum);
		}
		else if (classification(nNum) == 2)
		{
			Tenz_Digit(nNum);
		}
		else if (classification(nNum) == 0)
		{
			break;
		}
	}
}

//checking the valid of number and print 100 if this is the value
int valid()
{
	int x;
	do
	{
		cout << "Enter a number to convert to roman numeral: \n";//@@
		cin >> x;
	} while (x > 100);
	if (x == 100)
	{
		cout << "C";
	}
	return x;
}

//classificate the number by digit
int classification(int x)
{
	 if ((x < 100) && (10 <= x))
	{
		return 2;
	}
	else if ((0 < x) && (x < 10))
	{
		return 1;
	}
	else if (x <= 0)
	{
		return 0;
	}
}

//build unity digit
void  Unitiy_Digit(int x)
{
	if ((1 <= x) && (x < 4))
	{
		for (int i = 0; i < x; i++)
		{
			cout << "I";
		}
	}
	else if (x == 4)
		{
			cout << "IV";
		}
	 else if ((5 <= x) && (x < 9))
	{
		cout << "V";
		for (int i = 5; i < x; i++)
		{
			cout << "I";
		}
	}
	else if (x==9)
	{
		cout << "IX";
	}
	cout << endl;
}

//build tenz digit
void Tenz_Digit(int x)
{
	int nTenz = (x / 10);
	int nUnity = (x % 10);

	if ((1 <= nTenz) && (nTenz < 4))
	{
		for (int i = 0; i < nTenz; i++)
		{
			cout << "X";
		}
	}
	else if (nTenz == 4)
	{
		cout << "XL";
	}
	else if ((5 <= nTenz) && (nTenz < 9))
	{
		cout << "L";
		for (int i = 5; i < nTenz; i++)
		{
			cout << "X";
		}
	}
	else if (nTenz == 9)
	{
		cout << "XC";
	}
	if ((1 <= nUnity) && (nUnity < 4))
	{
		for (int i = 0; i < nUnity; i++)
		{
			cout << "I";
		}
	}
	else if (nUnity == 4)
	{
		cout << "IV";
	}
	else if ((5 <= nUnity) && (nUnity < 9))
	{
		cout << "V";
		for (int i = 5; i < nUnity; i++)
		{
			cout << "I";
		}
	}
	else if (nUnity == 9)
	{
		cout << "IX";
	}
	cout << endl;

}
