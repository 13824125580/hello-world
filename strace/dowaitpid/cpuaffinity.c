#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <unistd.h>
#include <sys/types.h>
#include <sched.h>


int main(void)
{
	cpu_set_t available_cpus;
	cpu_set_t af_set;
	int err;

	CPU_ZERO(&af_set);
	CPU_SET(1, &af_set);

	err = sched_setaffinity(0, sizeof(af_set), &af_set);
	if(err != 0)
	{
		perror("sched_setaffinity failure.\n");
		exit(-1);
	}

	err = sched_getaffinity(0, sizeof(available_cpus), &available_cpus);
	if(err < 0)
	{
		perror("sched_getaffinity failed.\n");
		exit(-1);
	}

	int cpu = 0;
	for(cpu = 0; cpu < 256; cpu ++)
	{
		if(!CPU_ISSET(cpu, &available_cpus))
			continue;
		printf("CPU %d used.\n", cpu);
	}

	return 0;
}
