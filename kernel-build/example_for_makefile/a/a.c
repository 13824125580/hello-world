#include <stdio.h>

int a()
{
	printf("%s line %d.\n", __func__, __LINE__);

	return 0;
}
