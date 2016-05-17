#include <iostream>
using namespace std;

//声明一个函数模版,用来比较输入的两个相同数据类型的参数的大小，class也可以被typename代替，  
//T可以被任何字母或者数字代替。  
template <class T>
T MIN(T x,T y)
{
    return(x<y)?x:y;
}

/* 
类模板，但是在类外定义成员函数的时候，需要使用函数模板 
*/
template <class T>
class Base
{
public :
    T a ;
    Base(T b)
    {
        a = b ;
    }
    T getA(){ return a ;} //类内定义   
    void setA(T c);
};

template <class T>   //模板在类外的定义   
void  Base<T>::setA(T c)
{
    a = c ;
}

int main(void)
{

     int n1=2,n2=10;
     double d1=1.5,d2=5.6;
     cout<< "较小整数:"<<MIN<int>(n1,n2)<<endl;
     cout<< "较小实数:"<<MIN<double>(d1,d2)<<endl;
     Base <int>b(4);
     cout<<b.getA()<<endl;

     Base <double> bc(4);
     bc.setA(4.3);
     cout<<bc.getA()<<endl;

     return 0;
}
