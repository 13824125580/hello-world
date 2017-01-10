#include <stdio.h>
int dd(void)
{
	printf("%s line %d.\n", __func__, __LINE__);
	return 0;
}
