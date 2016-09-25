#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/sysinfo.h>
#include <unistd.h>

#define __USE_GNU
#include <sched.h>
#include <ctype.h>
#include <string.h>
#include <pthread.h>
#define THREAD_MAX_NUM 100
#define DBG(fmt, ...)    do { printf("%s line %d, "fmt, __func__, __LINE__, ##__VA_ARGS__); } while(0)

int num = 0;

void* threadfun(void *arg)
{
	cpu_set_t mask;
	cpu_set_t get;
	int *a = (int*)arg;
	DBG("the a is :%d.\n", *a);

	CPU_ZERO(&mask);
	CPU_SET(*a, &mask);

	if(sched_setaffinity(0, sizeof(mask), &mask) == -1)
	{
		DBG("warning, could not set cpu affinity, continuing ...\n");
	}

	while(1)
	{
		CPU_ZERO(&get);
//		if(sched_getaffinity(0, sizeof(get), &get) == -1)
		{
//			DBG("warning, could not get cpu affinity, continuing ...\n");
		}

		int i;
		for(i = 0; i < num; i ++)
		{
				if(CPU_ISSET(i, &get))
				{
					if(i != *a)
					{
						DBG("fatal, exit.\n");
						exit(-1);
					}
//					DBG("this thread %d is running on processor %d.\n", *a, i);
				}
		}
	}

	return NULL;
}

int main(int argc, char* argv[])
{
	num = sysconf(_SC_NPROCESSORS_CONF);
	pthread_t thread[THREAD_MAX_NUM];
	struct sched_param param;
	pthread_attr_t attr0;
	
	DBG("system has %d processors.\n", num);

	int tid[THREAD_MAX_NUM];
	int i;

	memset(&param, 0x00, sizeof(param));
	memset(&attr0, 0x00, sizeof(attr0));

    pthread_attr_init(&attr0);
	param.sched_priority = 1; //0 is the highest of rt, 99 is the lowerst.
	pthread_attr_setschedpolicy(&attr0, SCHED_RR);
	pthread_attr_setschedparam(&attr0, &param); 
	pthread_attr_setinheritsched(&attr0, PTHREAD_EXPLICIT_SCHED);
	for(i = 0; i < num; i ++)
	{
		tid[i] = i;
//		if( i == 0)
		    pthread_create(&thread[i], &attr0, threadfun, (void*)&tid[i]);
//		else
//		    pthread_create(&thread[i], NULL, threadfun, (void*)&tid[i]);
	}

    pthread_exit(NULL);
	for(i = 0; i < num; i ++)
	{
		pthread_join(thread[i], NULL);
	}

	return 0;
}
