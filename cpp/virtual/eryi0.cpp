//-----------------------------------------------------  
//名称：blog_virtual_inherit.cpp  

//说明：C++虚拟继承学习演示  
//环境：VS2005  
//blog：pppboy.blog.163.com  
//----------------------------------------------------  
#include <iostream>
using namespace std;  

int gFlag = 0;  

class Base  
{
public:  
Base(){cout << "Base called : " << gFlag++ << endl;}  
void print(){cout << "Base print" <<endl;}  
};

class Mid1 : public Base  
{
public:  
Mid1(){cout << "Mid1 called" << endl;}  
private:  
};

class Mid2 : public Base  
{
public:  
Mid2(){cout << "Mid2 called" << endl;}  
};

class Child:public Mid1, public Mid2  
{
public:  
Child(){cout << "Child called" << endl;}  
};

int main(int argc, char* argv[])  
{
Child d;

//不能这样使用，会产生二意性  
//d.print();  

//只能这样使用  
d.Mid1::print();
d.Mid2::print();

cin.get();
return 0;  
}

