#include <iostream>
#define SIZE 25

using namespace std;

typedef struct Person {
	int tz;
	char * name;
	Person * Ema;
	Person * Aba;
}Person;

typedef struct Family{
	char * familyname;
	Person * Aba;
	Person * Ema;
	int num_kids;
	Person * PerArr;
}Family;

void MakePerson(Person & P){
	char buff[SIZE];
	cout << "Enter First Name:" << endl;
	cin >> buff;
	P.name=new char[strlen(buff)+1];
	strcpy_s(P.name, strlen(buff) + 1, buff);
	cin >> P.tz;
	P.Aba = NULL;
	P.Ema = NULL;
}
void PrintPerson(const Person & P){
	cout << "First Name:"<< P.name<<endl;
	cout << "TZ:" << P.tz << endl;
	if (P.Aba)
		cout << "Aba:" << P.Aba->name << endl;
	if (P.Ema)
		cout << "Aba:" << (*P.Ema).name << endl;
}
void MakeFamily(Family & F,Person * father,Person * mother){
	char buff[SIZE];
	
	F.Aba = father;
	F.Ema = mother;
	cout << "Enter Family Name:" << endl;
	cin >> buff;
	F.familyname = new char[strlen(buff) + 1];
	strcpy_s(F.familyname, strlen(buff) + 1, buff);

	cin >> F.num_kids;
	F.PerArr = new Person[F.num_kids];
	for (int i = 0; i < F.num_kids; i++){
		MakePerson(F.PerArr[i]);
	}
}

void PrintFamily(const Family & F){
	cout << "FamilyName:"<<F.familyname<<endl;
	cout << "Father:";
	PrintPerson(*(F.Aba));
	cout<< endl;
	cout << "Mother:";
	PrintPerson(*(F.Ema));
	cout << endl;
	cout << "Children:" << endl;
	for (int i = 0; i < F.num_kids; i++){
		cout << "Child" << i << ":";
		PrintPerson(F.PerArr[i]);
		cout<< endl;
	}
	
}
void DeleteFamily(Family &F){
	delete [] F.familyname;
	for (int i = 0; i < F.num_kids; i++){
		delete[] F.PerArr[i].name;
	}
	delete [] F.PerArr;

}
int main(){
	Family F;
	Person P1, P2;
	MakePerson(P1);
	MakePerson(P2);
	MakeFamily(F,&P1,&P2);
	PrintFamily(F);
	DeleteFamily(F);
}