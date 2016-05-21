#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <fcntl.h>
#include <stdio.h>

int main(int argc, char **argv)
{
	volatile unsigned char *m;
	/* 
	 * important notes:
	 * this needs sudo permission
	 */
	int fd = open("/dev/sda", O_RDONLY, S_IRUSR);
	unsigned int i;
#define MAP_SIZE 2048UL * 1024 * 1024
	m = mmap(0, MAP_SIZE, PROT_READ | PROT_EXEC,
			MAP_PRIVATE, fd, 0);

	if (m == MAP_FAILED) {
		perror("mmap /dev/sda failed\n");
		exit(-1);
	}

	sleep(1);
#if 1
	/* 
	 * enable this will trigger OOM killer
	 * disable this will trigger Page Reclaim
	 */
	mlockall(MCL_CURRENT | MCL_FUTURE);
#endif
	printf("memory base:%p\n", m);

	for (i = 0 ; i < MAP_SIZE; i++)
		(void)m[i];

	pause();
}
