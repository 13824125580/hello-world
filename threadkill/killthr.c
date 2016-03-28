#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>
#include <signal.h>
#include <sys/syscall.h>

#define DBG(fmt, ...) do { printf("file %s, func %s, line %d, "fmt, __FILE__, __func__, __LINE__, ##__VA_ARGS__); } while(0)

static unsigned char tsk1_exit;
static unsigned char tsk2_exit;
static unsigned char tsk3_exit;
static void task1_sighandler(int signo)
{
	DBG("pid %ld, tid %ld, signo = %d.\n", syscall(SYS_getpid), syscall(SYS_gettid), signo);
//	pthread_exit(NULL);
	tsk1_exit = 1;
	return;
}

static void task2_sighandler(int signo)
{
	DBG("pid %ld, tid %ld, signo = %d.\n", syscall(SYS_getpid), syscall(SYS_gettid), signo);
//	pthread_exit(NULL);
	tsk2_exit = 1;
	return;
}

static void task3_sighandler(int signo)
{
	DBG("pid %ld, tid %ld, signo = %d.\n", syscall(SYS_getpid), syscall(SYS_gettid), signo);
//	pthread_exit(NULL);
	tsk3_exit = 1;
	return;
}
static void* task1(void *arg)
{
	while(!tsk1_exit)
	{
		DBG("pid %ld, tid %ld.\n", syscall(SYS_getpid), syscall(SYS_gettid));
	}

	return NULL;
}
static void* task2(void *arg)
{
	while(!tsk2_exit)
	{
		DBG("pid %ld, tid %ld.\n", syscall(SYS_getpid), syscall(SYS_gettid));
	}

	return NULL;
}
static void* task3(void *arg)
{
	while(!tsk3_exit)
	{
		DBG("pid %ld, tid %ld.\n", syscall(SYS_getpid), syscall(SYS_gettid));
	}

	return NULL;
}

int main(void)
{
	int i;
	pthread_t thr1, thr2, thr3;
	struct sched_param param;
	pthread_attr_t attr1, attr2, attr3;

	i = getuid();
	DBG("the current user is %s.\n", i == 0? "root" : "other");
	DBG("pid %ld, tid %ld.\n", syscall(SYS_getpid), syscall(SYS_gettid));

	signal(SIGUSR1, task1_sighandler);	
	signal(SIGUSR2, task2_sighandler);	
	signal(SIGRTMIN,task3_sighandler);	
	memset(&param, 0x00, sizeof(struct sched_param));
	memset(&attr1, 0x00, sizeof(pthread_attr_t));
	memset(&attr2, 0x00, sizeof(pthread_attr_t));
	memset(&attr3, 0x00, sizeof(pthread_attr_t));

	pthread_attr_init(&attr1);
	pthread_attr_init(&attr2);
	pthread_attr_init(&attr3);

	param.sched_priority = 51;
 	pthread_attr_setschedpolicy(&attr1,SCHED_RR);
	pthread_attr_setschedparam(&attr1,&param);
	pthread_attr_setinheritsched(&attr1,PTHREAD_EXPLICIT_SCHED);
	param.sched_priority = 51;
 	pthread_attr_setschedpolicy(&attr2,SCHED_RR);
	pthread_attr_setschedparam(&attr2,&param);
	pthread_attr_setinheritsched(&attr2,PTHREAD_EXPLICIT_SCHED);
	param.sched_priority = 51;
 	pthread_attr_setschedpolicy(&attr3,SCHED_RR);
	pthread_attr_setschedparam(&attr3,&param);
	pthread_attr_setinheritsched(&attr3,PTHREAD_EXPLICIT_SCHED);

	int p1 = pthread_create(&thr1,&attr1, (void *)task1, NULL);
	int p2 = pthread_create(&thr2,&attr2, (void *)task2, NULL);
	int p3 = pthread_create(&thr3,&attr3, (void *)task3, NULL);
	if(p1 || p2 || p3)
	{
		DBG("create thread error! %d, %d, %d.\n", p1, p2, p3);
	}
	sleep(3);
	pthread_kill(thr1, SIGUSR1);
	pthread_kill(thr2, SIGUSR2);
	pthread_kill(thr3, SIGRTMIN);
	pthread_join(thr1, NULL);
	pthread_join(thr2, NULL);
	pthread_join(thr3, NULL);
	return 0;
}
