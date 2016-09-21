#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#define DBG(fmt, ...)     do { printf("%s line %d, "fmt, __func__, __LINE__, ##__VA_ARGS__); }while(0)

void thread_1(void)
{
	DBG("\n");	

	sleep(10);
	execl("/bin/a.out", "ls", NULL);
	return;
}


int main(void)
{
	pthread_t  id_1;
	int ret;

	ret = pthread_create(&id_1, NULL, (void*)thread_1, NULL);
	if(ret != 0)
	{
		DBG("create thread error.\n");
		exit(0);
	}

	pthread_exit(0);
	while(1)
	{
		DBG("\n");
		sleep(1);
	}
	pthread_join(id_1, NULL);

	return 0;
}
