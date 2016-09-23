#include <stdio.h>
#include <signal.h>
#include <errno.h>


void sig_stop_handler(int signo)
{
	printf("%s line %d, signo = %d.\n", __func__, __LINE__, signo);

	return;
}

int main(void)
{
	//int ret = signal(/*SIGSTOP*/SIGUSR1, sig_stop_handler);
	int ret;
	signal(SIGUSR1, sig_stop_handler);
	printf("%s line %d, ret = %d.\n", __func__, __LINE__, ret);
	int abc = sleep(30);

	printf("%s line %d, out.abc = %d.errno = %d.\n", __func__, __LINE__, abc,errno);
	return 0;
}
