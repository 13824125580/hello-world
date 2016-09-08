#include <stdio.h>
#include <sys/signal.h>
#ifdef __x86_64__
# define REG_IP REG_RIP
# define WIDTH "q"
#else
# define REG_IP REG_EIP
# define WIDTH "l"
#endif

static void sigtrap(int sig, siginfo_t *info, void *ctx_void)
{
	printf("signal trap.\n");
}

static void set_eflags(unsigned long eflags)
{
	asm volatile ("push" WIDTH " %0\n\tpopf" WIDTH
		      : : "rm" (eflags) : "flags");
}
static unsigned long get_eflags(void)
{
	unsigned long eflags;
	asm volatile ("pushf" WIDTH "\n\tpop" WIDTH " %0" : "=rm" (eflags));
	return eflags;
}
int main(void)
{
	struct sigaction sa;
	memset(&sa, 0, sizeof(sa));
	sa.sa_sigaction = sigtrap;
	sa.sa_flags = SA_SIGINFO;
	sigemptyset(&sa.sa_mask);
	if (sigaction(SIGTRAP, &sa, 0))
		printf("sigaction\n");

        set_eflags(get_eflags() | (1 << 8));
	//while(1)
	{
		sleep(1);
		printf("helloworld.\n");
	}
	

    return 0;
}
