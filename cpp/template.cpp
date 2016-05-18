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
    T *a ;  
    Base()  
    {  
	cout<<"base()"<<endl;
    }     

    Base(T* b)  
    {  
	cout<<"base(T*p)"<<endl;
        a = b ;      
    }     

    void operator()()
    {
	cout<<"fuck you"<<endl;
    }
    Base(const Base<T> &b)  
    {  
	cout<<"base(const Base<T>&b)"<<endl;
    }     
    T getA(){ return a ;} //类内定义   
    void setA(T c);  
    
    int operator == (const Base<int>& c);
    template<class U> Base(U* other);
    template<class U> Base(const Base<U>& other);
};  
 
template<class T> template<class U>
Base<T>::Base(U* other) {
}

template<class T> template<class U>
Base<T>::Base(const Base<U>& other) {
}

template <class T>   //模板在类外的定义   
void  Base<T>::setA(T c)  
{  
    a = c ;  
}  
  
template <class T>   //模板在类外的定义   
int  Base<T>::operator == (const Base<int>& c)  
{  
    cout<<"operator =="<<endl;
    return this->a == c.a ;  
}  

int test_reference(int &a, int &b)
{
	a = 100;
	b = 900;
}

int main(void)  
{  
#if 0  
     int aa = 1;
     int bb = 1;
     int n1=2,n2=10;  
     double d1=1.5,d2=5.6;  
     cout<< "较小整数:"<<MIN<int>(n1,n2)<<endl;  
     cout<< "较小实数:"<<MIN<double>(d1,d2)<<endl;  
     Base <int>b(4);  
     cout<<b.getA()<<endl;   
  
     Base <double> bc(4);  
     bc.setA(4.3);  
     cout<<bc.getA()<<endl;   

     cout<<"aa="<<aa<<endl<<"bb="<<bb<<endl;
     test_reference(aa, bb);
     cout<<"aa="<<aa<<endl<<"bb="<<bb<<endl;
#endif

     Base<int>ok;
     int *pk = (int*)9;
     if(ok == pk)
     {
     }
     return 0;
}  
