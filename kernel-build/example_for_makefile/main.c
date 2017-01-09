#include <stdio.h>

extern int a();
extern int b();
extern int c();
int main()
{
	a();
	b();
	c();
	printf("%s linenew %d.\n", __func__, __LINE__); 

	return 0;
}
