#include <iostream>
using namespace std;
int valid();
int Counter(int x);

int main()
{
	int num = valid();
	cout << num << " contains the number six " << Counter(num) << " time(s).\n";
}

//checking the value of num
int valid()
{
	int num;
	do
	{
		cout << "Please enter a positive number: \n";
		cin >> num;
	} 
	while (num <= 0);
	return num;
}

//Count the number six
int Counter(int number)
{
	int Counter = 0;
	if ((0 < number) && (number < 10))
	{
		if ((number % 10) == 6)
		{
			Counter += 1;
		}
		else
		{
			Counter = 0;
		}
	}

	else for (int i = 1; i < number; i = i * 10)
	{
		int RealNumber = number / i;
		if ((RealNumber % 10) == 6)
		{
			Counter++;
		}
	}
	return Counter;
}



