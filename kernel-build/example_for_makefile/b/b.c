#include <stdio.h>

int b()
{
	printf("%s line %d.\n", __func__, __LINE__); 
	return 0;
}
