#include <stdio.h>

int c()
{
	printf("%s line %d.\n", __func__, __LINE__); 
	return 0;
}
