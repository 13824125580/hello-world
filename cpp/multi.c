#include <iostream>
using namespace std;

class B1
{
public:
       B1(int i)
       {
              b1 = i;
              cout<<"构造函数 B1."<<i<<"this is="<<this<< endl;
       }
       void print()
       {
              cout<<"B1.print()"<<b1<<endl;
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
              cout<<"构造函数 B2."<<i<<"this is=" <<this<<endl;
       }
       void print()
       {
              cout<<"B2.print()"<<b2<<endl;
       }
private:
       int b2;
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
private:
       int a;
       B3 bb;
};

A ff(3,4,5,6);
int main(void)
{
       A aa(1, 2, 3, 4);
       aa.print();      
       cout<<"&aa="<<&aa<<endl;

       return 0;
}
