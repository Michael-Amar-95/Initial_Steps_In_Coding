//Checking the profit and the lost of theater

#include <iostream>
using namespace std;

int main()
{
	int nSoldTickets;
	int nPriceOfTicket;
	int nNumberOfSeats = 120;
	int nCost = 2000;

	cout << "Enter number of tickets sold: \n";
	cin >> nSoldTickets;
	cout << "Enter ticket price: \n";
	cin >> nPriceOfTicket;

	//calculate profit and lost
	if (nNumberOfSeats >= nSoldTickets) 
	{
		cout << "The theater earned:" << nSoldTickets * nPriceOfTicket << " NIS" << endl;
		if ((nSoldTickets * nPriceOfTicket) >= nCost)
        {
			cout << "Profit:" << (nSoldTickets * nPriceOfTicket) - nCost << " NIS" << endl;
		}
		else {
			cout << "Loss:" << ((-1) * ((nSoldTickets * nPriceOfTicket) - nCost)) << " NIS" << endl;
		}

		// calculate the lost of potential earnings
		cout << "Lost potential earnings:" << ((nPriceOfTicket * nNumberOfSeats) - (nPriceOfTicket * nSoldTickets)) << " NIS" << endl;
	}
	else {
		cout << "Number of tickets is wrong!!\n";
	}

}
