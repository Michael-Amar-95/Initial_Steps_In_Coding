#include <iostream>
#define MAX_SIZE 200
using namespace std;

//declarete function
int menu();
int valid(char string[], int size);
int lenght(char string[MAX_SIZE]);
int checkRepetition(char string[], int size, int place, char letter);
void compress(char string[], int size);
void decompress(char string[MAX_SIZE], int size);
void uppercase(char string[], int size);

int main()
{
	int decision;  //the choose of the user
	do {
		char string[MAX_SIZE];
		 decision = menu();
		if (decision == 3)
		{
			cout << " Goodbye!\n";
			return 0;
		}
		cout << "Input String: ";
		cout << endl;
		cin >> string;
		int size = lenght(string); // size of string
		if (decision == 1)
		{
			uppercase(string, size); //switch all uppercase to lowercase
			if (valid(string, size) == 0) // check if there are number in the string
			{
				cout << "ERROR!\n\n";
			}
			else
			{
				compress(string, size);
			}
		}
		else if (decision == 2)
		{
			decompress(string, size);
		}
	} while (decision != 3);
}

//This function open the menu and take from the user a decision
int menu()
{
	int decision;
	cout << "Menu" << "\n  (1) Compress String\n" << "  (2) Decompress String\n" << "  (3) Exit\n\n";
	cin >> decision;
	return decision;
}

//This function check if all the Characters are letters 
int valid(char string[], int size)
{
	int i = 0; 
	while ( i < size) // run on all the cells in the string
	{
		if ('A' <= string[i] && string[i] <= 'Z')
		{
			i++;
		}
		else
		{
			return 0;
		}
	}
	return 1;
}

//this function switch lower case to uppercase
void uppercase(char string[], int size)
{
	for (int i = 0; i < size; i++)
	{
		if ('a' <= string[i] && string[i] <= 'z')
		{
			string[i] = string[i] - 32;
		}
	}
}

//This function check the lenght of the string and bring back its value
int lenght(char string[MAX_SIZE])
{
	int counter = 0;
	for (int i = 0; string[i] != '\0' ; i++)
	{
		counter++;
	}
	return counter;
}

//This function Compress the string
void  compress(char string[], int size)
{
	char compressed[MAX_SIZE];
	int i = 0;
	for (int j = 0; j < size; j+= checkRepetition(string, size, j, string[j]))
	{
		compressed[i] = string[j];
		if (checkRepetition(string ,size, j , string[j]) != 1)
		{
			char number = 48 + checkRepetition(string, size, j, string[j]);
			compressed[i + 1] = number;
			i++;
		}
		i++;
	}
	compressed[i] = '\0';
	cout << "Compressed String:" << compressed << endl << endl;
}

//This function check the repetition of a letter
int checkRepetition(char string[], int size, int place, char letter)
{
	int counter = 0;
	while ((string[place] == letter) && place < size)
	{
		counter++;
		place++;
	}
	return counter;
}

//This function decompress the string
void decompress(char string[MAX_SIZE], int size)
{
	char decompressed[MAX_SIZE];
	int i = 0;
	for (int j = 0; j < size; j++)
	{
		decompressed[i] = string[j];
		if ('2' <= string[j + 1] && string[j + 1] <= '9')
		{
			int number = string[j + 1] - 48;
			int times = 0;
			while (times < number - 1)
			{
				i++;
				decompressed[i] = string[j];
				times++;
			}
			j++;
		}
		i++;
	}
	decompressed[i] = '\0';
	cout << "Uncompressed String:" << decompressed << endl << endl;
}




