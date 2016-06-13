#include <iostream>
using namespace std;

class B1
{
public:
       B1(int i)
       {
              b1 = i;
              cout<<"构造函数 B1."<<i<< endl;
       }
       void print()
       {
              cout<<"B1.print()"<<b1<<endl;
       }
       virtual int b1_virt(void)
       {
		cout<<"father b1 virtual"<<endl;
		return 0;
       }
private:
       int b1;
};
 
class B2
{
public:
       B2(int i)
       {
              b2 = i;
	      dummy0 = 0x5a5a5a5a;
	      dummy1 = 0xa5a5a5a5;
              cout<<"构造函数 B2."<<i<< endl;
       }
       void print()
       {
              cout<<"B2.print()"<<b2<<endl;
       }
private:
       int b2;
public:
       int dummy0;
       int dummy1;
};
class B3
{
public:
       B3(int i)
       {
              b3 = i;
              cout<<"构造函数 B3."<<i<<endl;
       }
       int getb3()
       {
              return b3;
       }
private:
       int b3;
};
class A : public B2, public B1
{
public:
       A(int i, int j, int k, int l):B1(i), B2(j), bb(k)
       {
              a = l;
              cout<<"构造函数 A."<<a<<endl;
       }
       void print()
       {
              B1::print();
              B2::print();
              cout<<"A.print()"<<a<<","<<bb.getb3()<<endl;
       }
       B2* return_fatherB2(void)
       {
		cout<<__func__<<"   "<<__LINE__<<"   "<<this<<endl;
		return this;
       }

       B1* return_fatherB1(void)
       {
		cout<<__func__<<"   "<<__LINE__<<"   "<<this<<endl;
		return this;
       }

       virtual int b1_virt(void)
       {
		cout<<"child b1 virtual"<<endl;
		B2::print();
		cout<<"dummy0 = 0x"<<hex<<dummy0<<endl<<"dummy1 = 0x" <<hex<<dummy1<<endl;
		return 0;
       }
private:
       int a;
       B3 bb;
};

int main()
{
       A aa(1, 2, 3, 4);
       aa.print();      

       cout<<"&A = "<<&aa<<endl;

       cout<<"father b2 = "<<aa.return_fatherB2()<<endl;
       cout<<"father b1 = "<<aa.return_fatherB1()<<endl;

       B1* pb1;
       pb1 = &aa;
       pb1->b1_virt();
       return 0;
}
