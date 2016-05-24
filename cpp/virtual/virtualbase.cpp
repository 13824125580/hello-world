//-----------------------------------------------------  
//名称：blog_virtual_inherit.cpp  

//说明：C++虚拟继承学习演示  
//blog：pppboy.blog.163.com  
//----------------------------------------------------  
#include <iostream>
using namespace std;  

int gFlag = 0;  

class Base  
{
friend int main(int argc, char* argv[]);
public:  
Base(){cout << "Base called : " << gFlag++ << endl;}  
void print(){cout << "Base print" <<endl;}  
private:
long dummy;
};

class Mid1 : virtual public Base  
{
friend int main(int argc, char* argv[]);
public:  
Mid1(){cout << "Mid1 called" << endl;}  
private:  
long dummy0;
};

class Mid2 : virtual public Base  
{
friend int main(int argc, char* argv[]);
public:  
Mid2(){cout << "Mid2 called" << endl;}  
private:
long dummy1;
};

class Child:public Mid1, public Mid2  
{
friend int main(int argc, char* argv[]);
public:  
Child(){cout << "Child called" << endl;}  
};

int main(int argc, char* argv[])  
{
Child d;

//这里可以这样使用  
d.print();

//也可以这样使用  
d.Mid1::print();
d.Mid2::print();

cout << "sizeof(d) == " << sizeof(d) <<endl;
cout << "sizeof(Base) == " << sizeof(Base) << endl;
cout << "sizeof(Mid1) == " << sizeof(Mid1) << endl;
cout << "sizeof(Mid2) == " << sizeof(Mid2) << endl;
d.dummy = 0x11111111;
d.dummy0=0x22222222;
d.dummy1=0x33333333;
cout<<"&d == " << &d << endl << "Mid1 = " << (Mid1*)&d << endl << "Mid2 = " << (Mid2*)&d << endl << "Base = " << (Base*)&d << endl;
cin.get();
return 0;  
}

