#include <sys/ptrace.h>
#include <unistd.h>
#include <stddef.h>
#include <sys/user.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>

#define DBG(fmt, ...)     do { printf("%s line %d, "fmt, __func__, __LINE__, ##__VA_ARGS__); } while(0)
const int long_size = sizeof(long);

void getdata(pid_t child, long addr, char *str, int len)
{
	char *laddr;
	int i, j;

	union u
	{
		long val;
		char chars[long_size];
	}data;

	i = 0;
	j = len / long_size;

	laddr = str;
	while(i < j)
	{
		data.val = ptrace(PTRACE_PEEKDATA, child, addr + i * long_size, NULL); 
		memcpy(laddr, data.chars, long_size);
		++ i;

		laddr += long_size;
	}

	j = len % long_size;

	if(j != 0)
	{
		data.val = ptrace(PTRACE_PEEKDATA, child, addr +i * long_size, NULL);
		memcpy(laddr, data.chars, j);
	}

	return;
}

void putdata(pid_t child, long addr, char *str, int len)
{
	char *laddr;
	int i, j;

	union u
	{
		long val;
		char chars[long_size];
	}data;

	i = 0;
	j = len / long_size;

	laddr = str;
	DBG("i = %d, j = %d.\n", i, j);
	while(i < j)
	{
		memcpy(data.chars, laddr, long_size);
		int ret = ptrace(PTRACE_POKEDATA, child, addr + i * long_size, data.val);
		++ i;
		laddr += long_size;
	}

	j = len % long_size;

	if(j != 0)
	{
		data.val = ptrace(PTRACE_PEEKDATA, child, addr +i * long_size, NULL);
		memcpy(data.chars, laddr, j);
		ptrace(PTRACE_POKEDATA, child, addr + i * long_size, data.val);
	}
	return;
}

int main(int argc, char* argv[])
{
	int status;
	pid_t traced_process;
	struct user_regs_struct regs, newregs;

	long ins;
	union u
	{
		long val;
		char chars[long_size];
	}data;

	char code[] = {0xcc};

	if(argc != 2)
	{
		DBG("Usage: %s<pid to be traced.>\n", argv[0]);
		exit(-1);
	}

	traced_process = atoi(argv[1]);
	int ret = ptrace(PTRACE_ATTACH, traced_process, NULL, NULL);

	wait(&status);
	ptrace(PTRACE_GETREGS, traced_process, NULL, &regs);	

	getdata(traced_process, regs.rip, data.chars, long_size);

	DBG("data.val = 0x%lx. rip = 0x%llx.\n", data.val, regs.rip);
	
	char orig;
	orig = data.chars[0];
	data.chars[0] = 0xcc;    //trap ins int3 on ARCH x86_32,x86_64.
	putdata(traced_process, regs.rip, data.chars, long_size);
	getdata(traced_process, regs.rip, data.chars, long_size);
	DBG("data.val = 0x%lx. rip = 0x%llx.\n", data.val, regs.rip);
	ptrace(PTRACE_CONT, traced_process, NULL, NULL);

	wait(&status);
	
	DBG("the trap instruction executed, the process stopped, putting back the original instructions.\n");

	DBG("Press <Enter> to continue.\n");
	getchar();

	data.chars[0] = orig;
	putdata(traced_process, regs.rip, data.chars, long_size);

	ptrace(PTRACE_SETREGS, traced_process, NULL, &regs);

	ptrace(PTRACE_DETACH, traced_process, NULL,NULL);
	return 0;
}
