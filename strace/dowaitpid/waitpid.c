#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>


int main(int argc, char*argv[])
{
	pid_t cpid, w;
	int status;

	cpid = fork();
	if(cpid == -1)
	{
		perror("fork");
		exit(EXIT_FAILURE);
	}

	if(cpid== 0)
	{
		printf("Child PID is %ld.\n", (long)getpid());
			
		if(argc == 1)
			pause();
		exit(-1);
	}
	else
	{
		do{
			w = waitpid(cpid, &status, WUNTRACED | WCONTINUED);
			//w = wait(&status);
			if(w == -1)
			{
				perror("waitpid");
				exit(EXIT_FAILURE);
			}

			if(WIFEXITED(status))
			{
				printf("exited, status = %d.\n", WEXITSTATUS(status));
			}
			else if(WIFSIGNALED(status))
			{
				printf("killedby signal %d.\n", WTERMSIG(status));
			}
			else if(WIFSTOPPED(status))
			{
				printf("stopped by signal %d.\n", WSTOPSIG(status));
			}
			else if(WIFCONTINUED(status))
			{
				printf("continued.\n");
			}

		}while(!WIFEXITED(status)&&!WIFSIGNALED(status));
	}
	return 0;
}
