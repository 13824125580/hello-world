#include <iostream>
using namespace std;

class point3d
{
public:
	point3d(float x = 0.0, float y = 0.0, float z = 0.0) : _x(x), _y(y), _z(z)
	{
		
	}
	point3d(const point3d& obj)
	{
		cout<<"copy constuctor"<<endl;
		_x = obj._x;
		_y = obj._y;
		_z = obj._z;
	}

	float x() const
	{
		cout<<"funtion ptr"<<endl;
		return _x;
	}
	
	float y() const
	{
		return _y;
	}
	
	float z() const
	{
		return _z;
	}

	void x(float xval)
	{
		_x = xval;
	}

	void y(float yval) 
	{
		_y = yval;
	}

	void z(float zval) 
	{
		_z = zval;
	}
private:
	float _x;
	float _y;
	float _z;
};

inline ostream& operator<<(ostream &os, const point3d &pt)
{
	return os << "(" << pt.x() << ", "
		<< pt.y() <<", " << pt.z() << ")";
}

class point {
public:
	point(float x = 0.0) : _x(x) { }
	float x() { return _x; }
	void x(float xval) { _x = xval; }
protected:
	float _x;
};

class point2d : public point {
public:
	point2d(float x = 0.0, float y = 0.0) : point(x), _y(y) { }
	float y() { return _y; }
	void y(float yval) { _y = yval; }
protected:
	float _y;
};

class point3D : public point2d {
public:
	point3D(float x = 0.0, float y = 0.0, float z = 0.0) : point2d(x, y), _z(z) { }
	float z() { return _z; }
	void z(float zval) { _z = zval; _z = _x; _z = _y;}
protected:
	float _z;
};

point3d foo(point3d r3d)
{
	return r3d;	
}
point3d pd;
typedef float (point3d::*p)() const;//定义指向Person类无参数无返回值的成员函数的指针  
int main(void)
{
	cout<<pd<<endl;
	p ip;
	ip = &point3d::x;
	(pd.*ip)();
	
	point3d cobj = pd;

	point3d ret = foo(cobj);
	return 0;
}
