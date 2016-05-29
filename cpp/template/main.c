#include <iostream>
using namespace std;

template <typename T>
void Swap(T &a, T &b);

int main(void)
{
	int i = 10;
	int j = 20;
	cout << "i = " << i << endl << "j = " << j << endl;	
	Swap(i, j);
	cout << "i = " << i << endl << "j = " << j << endl;	

	double k = 10;
	double l = 20;
	cout << "k = " << k << endl << "l = " << l << endl;	
	Swap(k, l);
	cout << "k = " << k << endl << "l = " << l << endl;	

	float kk = 10;
	float ll = 20;
	cout << "kk = " << kk << endl << "ll = " << ll << endl;	
	Swap(kk, ll);
	cout << "kk = " << kk << endl << "ll = " << ll << endl;	

	return 0;
}

template <typename T>
void Swap(T &a, T &b)
{
	T temp;
	
	temp = a;
	a = b;
	b = temp;
}
