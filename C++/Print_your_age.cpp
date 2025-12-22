#include <iostream>
using namespace std;

int main()
{
	
	int nMyAge;
	cout << "Enter age: \n";
	cin >> nMyAge;
	cout << "Your age is:\n";
	cout << nMyAge<< endl;

   //checking if the user allowed to buy alcohol
	if (nMyAge > 18) {
		cout << "You are permitted to purchase alcohol!\n";
	}
	else if ((nMyAge <= 18)&&(nMyAge > 0)) {
		cout << "You are too young to purchase alcohol!\n";
	}
	else {
		cout << "Incorrect age\n";
	}
			
	return 0;

}
