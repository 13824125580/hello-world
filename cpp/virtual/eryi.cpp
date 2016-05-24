//-----------------------------------------------------
//名称：blog_virtual_inherit.cpp 
//说明：C++虚拟继承学习演示 
//---------------------------------------------------- 
#include <iostream>
using namespace std;

//Base 
class Base
{
public:
	Base(){cout << "Base called..."<< endl;}
	void print(){cout << "Base print..." <<endl;}
private:

};

//Sub 
class Sub //定义一个类 Sub 
{
public:
	Sub(){cout << "Sub called..." << endl;}
	void print(){cout << "Sub print..." << endl;}
private:

};

//Child 
class Child : public Base , public Sub //定义一个类Child 分别继承自 Base ，Sub 
{
public:
	Child(){cout << "Child called..." << endl;}
private:

};

int main(int argc, char* argv[])
{
	Child c;

	//不能这样使用，会产生二意性，VC下error C2385 
	//c.print();  

	//只能这样使用 
	c.Base::print();
	c.Sub::print();

	cin.get();
	return 0;
}
