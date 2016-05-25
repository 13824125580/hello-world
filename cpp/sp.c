#include <iostream>
using namespace std;


#define COMPARE(_op_)                                           \
inline bool operator _op_ (const sp<T>& o) const {              \
		cout<<o.m_ptr<<m_ptr<<endl;                 \
   bool res = m_ptr _op_ o.m_ptr;                                  \
	cout<<"res="<<res<<endl;                                \
     return res;                                                \
}                                                               \
inline bool operator _op_ (const T* o) const {                  \
    cout<<"22222"<<endl;                                        \
    return m_ptr _op_ o;                                        \
}                                                               \
template<typename U>                                            \
inline bool operator _op_ (const sp<U>& o) const {              \
     cout<<"33333333333333"<<endl;                             \
    return m_ptr _op_ o.m_ptr;                                  \
}                                                               \
template<typename U>                                            \
inline bool operator _op_ (const U* o) const {                  \
    cout<<"44444444444444"<<endl;                               \
    return m_ptr _op_ o;                                        \
}                                                               \
inline bool operator _op_ (const T o) const {                  \
    cout<<"555555"<<endl;                                        \
    return  1;                                        \
}                                                               

// ---------------------------------------------------------------------------

template<typename T>
class sp {
public:
    sp() : m_ptr((T*)-1) { cout<<"sp()"<<endl; }

    sp(T* other);
    sp(const sp<T>& other);
    template<typename U> sp(U* other);
    template<typename U> sp(const sp<U>& other);

    ~sp();

    operator T* ()
    {
	cout<<"hereo"<<endl;
	return m_ptr;
    }

    // Assignment

    sp& operator = (T* other);
    sp& operator = (const sp<T>& other);

    template<typename U> sp& operator = (const sp<U>& other);
    template<typename U> sp& operator = (U* other);

    //! Special optimization for use by ProcessState (and nobody else).
    void force_set(T* other);

    // Reset

    void clear();

    // Accessors

    inline  T&      operator* () const  {cout<<"asdfsa"<<endl; return *m_ptr; }
    inline  T*      operator-> () const {cout<<"adfasfa"<<endl; return m_ptr;  }
    inline  T*      get() const         { cout<<"asdfas"<<endl; return m_ptr; }

    // Operators

    COMPARE(==)
    COMPARE(!=)
    COMPARE(>)
    COMPARE(<)
    COMPARE(<=)
    COMPARE(>=)

private:    
    template<typename Y> friend class sp;
    void set_pointer(T* ptr);
    T* m_ptr;
};

#undef COMPARE

// ---------------------------------------------------------------------------
// No user serviceable parts below here.

template<typename T>
sp<T>::sp(T* other)
        : m_ptr(other) {

	cout<<"1"<<endl;
}

template<typename T>
sp<T>::sp(const sp<T>& other)
        : m_ptr(other.m_ptr) {
	cout<<"2"<<endl;
}

template<typename T> template<typename U>
sp<T>::sp(U* other)
        {
	cout<<"3"<<endl;
}

template<typename T> template<typename U>
sp<T>::sp(const sp<U>& other)
         {
	cout<<"4"<<endl;
}

template<typename T>
sp<T>::~sp() {
	cout<<"5"<<endl;
}

template<typename T>
sp<T>& sp<T>::operator =(const sp<T>& other) {
    T* otherPtr(other.m_ptr);
    m_ptr = otherPtr;
	cout<<"6"<<endl;
    return *this;
}

template<typename T>
sp<T>& sp<T>::operator =(T* other) {
    m_ptr = other;
	cout<<"7"<<endl;
    return *this;
}

template<typename T> template<typename U>
sp<T>& sp<T>::operator =(const sp<U>& other) {
    T* otherPtr(other.m_ptr);
    m_ptr = otherPtr;
	cout<<"8"<<endl;
    return *this;
}

template<typename T> template<typename U>
sp<T>& sp<T>::operator =(U* other) {
    m_ptr = other;
	cout<<"9"<<endl;
    return *this;
}

template<typename T>
void sp<T>::force_set(T* other) {
    m_ptr = other;
	cout<<"10"<<endl;
}

template<typename T>
void sp<T>::clear() {
    if (m_ptr) {
        m_ptr = 0;
    }
	cout<<"11"<<endl;
}

template<typename T>
void sp<T>::set_pointer(T* ptr) {
    m_ptr = ptr;
	cout<<"12"<<endl;
}

int main(void)
{
	sp<int> b;
        bool out = (b==9);
        cout<<"out="<<out<<endl;
  	if(out)
        {
		cout<<"identical"<<endl;
        }
	else
		cout<<"not same"<<endl;
	int *p = NULL;
	sp<double>c(p);
	sp<double>d(b);
	
	return 0;
}
