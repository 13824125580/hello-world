#include<iostream>
using namespace std;

class Base
 {
public:
  int a;
  int b;
  Base(int temp1 = 0, int temp2 = 0)
  {
	 a=temp1;
	 b=temp2; 
  }
  virtual ~Base(){std::cout << "~Base()" << std::endl;};

  virtual int getA()  
  {
	 return a;
  }
  virtual int getB()  
  {
	 return b;
  }
};

class Derive: public Base
{
public:
  // *__vptr is inherited by derived classes
  Derive(int d1, int d2):Base(d1,d2){}
  virtual int getA(){return a;}
  virtual int getB(){return b;} 
};

class Empty{
public:
  int e;
};

int main() 
{
  Derive obj(5, 10);
  std::cout << "sizeof class: " << sizeof(Base) << std::endl;

  std::cout << "the &obj :  " << &obj << std::endl;//&obj = the hidden pointer, which we will call *__vptr. *
  std::cout << "the &obj+1: " << &obj + 1 << std::endl;//As sizeof(test) is 16, so  (Base *) + 1 means addr + 16
  std::cout << "the &obj.a: " << &obj.a << std::endl;
  std::cout << "the &obj.b: " << &obj.b << std::endl;
  // Changing a and b by *__vptr
  std::cout << "--------------Set member variable over vptr(8 bytes = 2*sizeof(int), so &a = pInt + 2)--------------" << std::endl;
  int* pInt = (int*)&obj;
  *(pInt+2) = 100;   
  *(pInt+3) = 200;   

  cout << "a = " << obj.getA() << endl;
  cout << "b = " << obj.getB() << endl;
  
  Empty e;
  std::cout << "the &e: " << &e << std::endl;
  std::cout << "the &e.e: " << &e.e << std::endl;//&e = &e.e, so there's no virtual table pointer
  return 0;
}
