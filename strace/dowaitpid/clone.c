#define _GNU_SOURCE
#include <unistd.h>
#include <sched.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/syscall.h>
#include <sys/ptrace.h>
#include <sys/syscall.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/user.h>
#include <time.h>

#define STACK_SIZE (1024 * 1024)
#define DBG(fmt, ...)  do { printf("%s line %d, "fmt, __func__, __LINE__, ##__VA_ARGS__); } while(0)

int main_thread(void *ptr)
{
	DBG("in.\n");

	while(1)
	{
		int c = getchar();

		if(c == EOF)
			break;

		nanosleep(&(struct timespec) {0, 200 * 1000 * 1000}, NULL);
		
		putchar(c);
	}

	return 0;
}

int main(void)
{
	pid_t v;
	void* vstack = malloc(STACK_SIZE);

	if(clone(main_thread, vstack + STACK_SIZE, CLONE_PARENT_SETTID | CLONE_FILES | CLONE_FS | CLONE_IO, NULL, &v) == -1)
	{
		DBG("failed to spawn child task.\n");

		exit(-3);
	}
	
	DBG("Target: %d, %d.\n", v, getpid());

	long ptv = ptrace(PTRACE_SEIZE, v, NULL, NULL);
	if(ptv == -1)
	{
		DBG("failed seize.\n");
		exit(-3);
	}

	struct user_regs_struct regs;
	
	DBG("begin to trace.\n");
	while(1)
	{
		sleep(1);

		long ptv = ptrace(PTRACE_INTERRUPT, v, NULL, NULL);
		if(ptv == -1)
		{
			DBG("failed to interrupt main thread.\n");
			exit(-3);
		}

		int status;

		if(waitpid(v, &status, __WCLONE) == -1)
		{
			DBG("target wait error.\n");
			exit(-3);
		}

        if(WIFEXITED(status))
        {
			DBG("exited, status = %d.\n", WEXITSTATUS(status));
        }
        else if(WIFSIGNALED(status))
        {
	        DBG("killedby signal %d.\n", WTERMSIG(status));
	    }
	    else if(WIFSTOPPED(status))
	    {
			#define PTRACE_EVENT_STOP  128
			if((status >> 8) != (SIGTRAP | PTRACE_EVENT_STOP << 8))
			{
				DBG("stop status error, exit.\n");
				exit(-1);
			}
	        DBG("stopped by signal %d.status = 0x%08x.\n", WSTOPSIG(status), status);
	    }
	    else if(WIFCONTINUED(status))
	    {
	        DBG("continued.\n");
	    }
	
		ptv = ptrace(PTRACE_GETREGS, v, NULL, &regs);
		if(ptv == -1)
		{
			DBG("failed to peek at registers of thread.\n");
			exit(-3);
		}

		DBG("%ld: RIP = 0x%llx. RSP = 0x%llx.\n", time(NULL), regs.rip, regs.rsp);

		ptv = ptrace(PTRACE_CONT, v, NULL, NULL);
		if(ptv == -1)
		{
			DBG("failed to resume main thread.\n");
			exit(-3);
		}
	}
	return 0;
}
