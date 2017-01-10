#include <stdio.h>

extern int a();
extern int b();
extern int c();
extern int dd();
int main()
{
	a();
	b();
	c();
	dd();
	printf("%s linenew %d.\n", __func__, __LINE__); 

	return 0;
}
