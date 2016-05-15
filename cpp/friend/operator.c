#include <iostream>
using namespace std;
 
class complex
{
friend istream &operator >> (istream &in,complex &s);
public:
    int operator()(int x) { 
        cout<<"operator overload"<<endl;
	return 2*x;
    } 
private:
    int real;
    int image;
};
 
istream &operator >> (istream &in,complex &s) 
{ 
    cout << "请输入实部的值： " ; 
    cin >> s.real ; 
    cout << s.real<<endl;
    cout << "请输入虚部的值： " ; 
    cin >> s.image; 
    cout<<s.image<<endl;
    return in; 
} 

//定义的复数类的输入运算的重载 
int main() 
{ 
    complex complex1; 
    cin >> complex1; 
    cout<<complex1(5)<<endl;
 
    return 0;
} 
