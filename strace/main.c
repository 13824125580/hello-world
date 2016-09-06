#include <sys/utsname.h>
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <sys/user.h>
#include <sys/reg.h>
#include <unistd.h>
#undef KERNEL_VERSION
#define KERNEL_VERSION(a,b,c) (((a) << 16) + ((b) << 8) + (c))
static unsigned get_os_release(void)
{
	unsigned rel;
	const char *p;
	struct utsname u;
	if (uname(&u) < 0)
		printf("uname");
	/* u.release has this form: "3.2.9[-some-garbage]" */
	rel = 0;
	p = u.release;
	printf("p = %s\n", p);
	for (;;) {
		if (!(*p >= '0' && *p <= '9'))
			printf("Bad OS release string: '%s'", u.release);
		/* Note: this open-codes KERNEL_VERSION(): */
		rel = (rel << 8) | atoi(p);
		if (rel >= KERNEL_VERSION(1,0,0))
			break;
		while (*p >= '0' && *p <= '9')
			p++;
		if (*p != '.') {
			if (rel >= KERNEL_VERSION(0,1,0)) {
				/* "X.Y-something" means "X.Y.0" */
				rel <<= 8;
				break;
			}
			printf("Bad OS release string: '%s'", u.release);
		}
		p++;
	}
	return rel;
}

static void trace_system_call(void)
{
   int val;
   int syscallID;
   int flag =  0;
   int returnValue;
   unsigned long regs = 0xffffffffffffffff;
   int j = 0;
   struct user_regs_struct      x86_64_r;
   memset(&x86_64_r, 0x00, sizeof(struct user_regs_struct));

    int  pid;
    switch(pid = fork())
    {
    case -1:
        return -1;
    case 0: //子进程
        ptrace(PTRACE_TRACEME,0,NULL,NULL);
        execl("./HelloWorld", "HelloWorld", NULL);
    default: //父进程
        j ++;
        wait(&val); //等待并记录execve
        if(WIFEXITED(val))
            return 0;
        syscallID=ptrace(PTRACE_PEEKUSER, pid, 8*ORIG_RAX, &regs);
        printf("Process executed system call ID = %d, regs = %ld.\n",syscallID, regs);
        ptrace(PTRACE_SYSCALL,pid,NULL,NULL);
        while(1)
        {
            j ++;
            wait(&val); //等待信号
            if(WIFEXITED(val)) //判断子进程是否退出
                return 0;
            if(flag==0) //第一次(进入系统调用)，获取系统调用的参数
            {
                syscallID=ptrace(PTRACE_PEEKUSER, pid, 8*ORIG_RAX, &regs);
                ptrace(PTRACE_GETREGS, pid, NULL, &x86_64_r);
                printf("Process executed system call ID = %d,regs = %ld.rax = %ld. j = %d.\n",syscallID, regs, x86_64_r.orig_rax, j);
               if(j >= 20)
		while(1)
			sleep(1);
                flag=1;
            }
            else //第二次(退出系统调用)，获取系统调用的返回值
            {
                returnValue=ptrace(PTRACE_PEEKUSER, pid, 8*RAX, &regs);
                printf("with return value= %ld, regs=%ld.\n", returnValue,regs);
                flag=0;
            }
            ptrace(PTRACE_SYSCALL,pid,NULL,NULL);
        }
    }

    return;
}

int main(void)
{
	int a = get_os_release();

	printf("a = %d.\n", a);
        trace_system_call();

	return 0;
}



