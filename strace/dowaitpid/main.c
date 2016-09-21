#include <stdio.h>

int main(void)
{
	sleep(30);

	printf("%s line %d, out.\n", __func__, __LINE__);
	return 0;
}
