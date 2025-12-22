#include <iostream>
#define MAX_SIZE 200
using namespace std;

//declarete the function
int cells(char inPutStr[MAX_SIZE]);
int cleaner(char inPutStr[MAX_SIZE], char dnaStr[MAX_SIZE]);
void lowerCase(char dnaStr[], int size);
int countOccurrence(char dnaStr[MAX_SIZE], int length, int size, int i);
int checkTheStr( char dnaStr[], int length, int size, int occurrence);
void outPut( char dnaStr[] ,char str[], int size, int i);


int main()
{
	char inPutStr[MAX_SIZE];
	char dnaStr[MAX_SIZE];
	int size;
	int occurrence;
	cout << "Please enter string:\n";
	cin >> inPutStr;
	lowerCase(inPutStr, cells(inPutStr)); //switch all the uppercase to lowercase
	int length = cleaner( inPutStr, dnaStr); // length of the good string
	cout << "Please enter size of substring: \n";
	cin >> size;
	cout << "Please enter # of occurrences:\n";
	cin >> occurrence;
	checkTheStr( dnaStr, length, size, occurrence);
}

//This function check the lenght of the string and bring back its value
int cells(char inPutStr[MAX_SIZE])
{
	int counter = 0;
	for (int i = 0; inPutStr[i] != '\0'; i++)
	{
		counter++;
	}
	return counter;
}

// This function remove all the letter that are not a,c,g,t
int cleaner(char inPutStr[MAX_SIZE], char dnaStr[MAX_SIZE])
{
	int j = 0;
	int counter = 0;
	for (int i = 0; inPutStr[i] != '\0'; ++i)
	{
		if (inPutStr[i] == 'a' || inPutStr[i] == 'c' || inPutStr[i] == 'g' || inPutStr[i] == 't')
		{
			dnaStr[j] = inPutStr[i];
			++j;
			counter++;
		}
	}
	dnaStr[j] = '\0';
	return counter;
}

//This function switch uppercase to lower case
void lowerCase(char dnaStr[], int size)
{
	for (int i = 0; i < size; i++)
	{
		if ('A' <= dnaStr[i] && dnaStr[i] <= 'Z')
		{
			dnaStr[i] = dnaStr[i] + 32;
		}
	}
}

//this function check if there are sub string that appear X times
int checkTheStr(char dnaStr[MAX_SIZE], int length, int size, int occurrence)
{
	char str[MAX_SIZE];
	for (int i = 0; i <= (length - size) ; i++)
	{
		if (countOccurrence(dnaStr, length, size, i) == occurrence)
		{
			outPut( dnaStr, str, size, i);
			cout << "The " << size << "-mer " << str << " appears " << occurrence << " times.\n";
			return 0;
		}
	}
	cout << "There is no " << size << "-mer that appears " << occurrence << " times.\n";
	return 0;
}


int countOccurrence(char dnaStr[MAX_SIZE], int length, int size, int i)
{
	int distance = 1;
	int n = i;
	int j = n + distance;
	int counter = 1;
	while (j <= length - size)
	{
		int m = 0;
		n = i;
		while (m < size)
		{
			if (dnaStr[n] == dnaStr[j])
			{
				n++;
				j++;
				m++;
			}
			else
			{
				break;
			}
		}
		if (m == size)
		{
			counter++;
		}
		distance++;
		j = i + distance;
	}
	return counter;
}

void outPut(char dnaStr[], char str[], int size, int i)
{
	int n = 0;
	while (n < size)
	{
		str[n] = dnaStr[i];
		i++;
		n++;
	}
	str[n] = '\0';
}








