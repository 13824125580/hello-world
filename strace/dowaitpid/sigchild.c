#include <iostream>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
using namespace std;

void fun()
{
	cout <<"fun begin" <<endl;

	int n = execl("/bin/ls", "ls", NULL);
	if(-1 == n)
	{
			cout<<"fun exec error."<<endl;
	}

	cout<<"fun end."<<endl;

	return;
}

void sig_chld(int signo)
{
	pid_t pid;
	int stat;

	cout << "in sig_chld" <<endl;
	if(signo == SIGCHLD)
	{
		cout << "in sig_chld sigchild."<<endl;
	}

	while((pid = waitpid(-1, &stat, WNOHANG)) > 0)
	{
		cout<<"进程:" << pid << "结束"<<endl;
	}

	return;
}

void sig_chld1(int signo)
{
	pid_t pid;
	int stat;
	cout << "in sig_chld1" <<endl;

	if(signo == SIGCHLD)
	{
		cout << "in sig_chld1 sigchld" <<endl;
	}

	while((pid = waitpid(-1, &stat, WNOHANG)) > 0)
	{
		cout<<"进程1:" << pid << "结束"<<endl;
	}
}

int main(void)
{
	cout <<"main begin." <<endl;

	signal(SIGCHLD, sig_chld);
	signal(SIGCHLD, sig_chld1);

	int n = fork();

	switch(n)
	{
		case 0:
			cout << "child:" << getpid() <<endl;
			sleep(7);
			fun();
			cout << "child end." <<endl;
			exit(0);
			break;
		case -1:
			cout <<"fork error." <<endl;
			break;
		default:
			cout << "parent, child pid:" << n << endl;
			break;
	}
	
	int status;
	int tt = wait(&status);
	cout <<"wait:" << tt << endl;
	cout << "main end" <<endl;
	return 0;
}

