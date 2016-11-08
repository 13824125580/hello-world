#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<wait.h>
 
int main( void)
{
	pid_t pid;
	int abc = 100;
	if((pid = vfork())<0){
		perror("vfork is failed");
		exit(1);
	}else if(pid==0){
		abc = 99;
		printf("\nthis is child process\n");
		while(1)
			sleep(1);
		exit(0);
	}else{
		printf("this is parent process, abc = %d.\n", abc);
		if(wait(NULL)==-1){
			perror("fail to wait");
			exit(1);
		}
	}
 
	return 0;
}

