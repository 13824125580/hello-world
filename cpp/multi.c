#include <iostream>
#include <iomanip>
using namespace std;

template<typename T> 
class sp { 
public: 
    sp() 
    {
	cout<<__func__<<setw(3)<<__LINE__<<endl;
	m_ptr = NULL;
    }
 
    sp(T* other) 
    {
	cout<<__func__<<setw(3)<<__LINE__<<setw(3)<<" copy constructor"<<endl;
	m_ptr = other;
    }
 
    ~sp() 
    {
	cout<<__func__<<setw(3)<<__LINE__<<endl;
    }
 
    operator T* () 
    { 
	cout<<__func__<<setw(3)<<__LINE__<<endl;
        return NULL; 
    } 
private:
    T* m_ptr;
};


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
       
       sp<B1> returnb1(void)
       {
	    cout<<__func__<<setw(3)<<__LINE__<<endl;
	    return this;
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
       sp<B1> s = ff.returnb1();
       return 0;
}
