#include<stdio.h> 
#include<stdlib.h> 
#include<unistd.h> 
#include<string.h> 
#include<errno.h> 
#include<fcntl.h> 
#include <signal.h>
#define FIFO_FILE "/tmp/myfifo" 

void sig_handler(int signo)
{
	printf("%s line %d, signo = %d.\n", __func__, __LINE__, signo);

    	signal(SIGPIPE, SIG_IGN);
	return ;
}  

int main() 
{ 

    //signal(SIGPIPE, sig_handler);
    sigset_t set;
    sigemptyset(&set);
    sigaddset(&set, SIGPIPE);
    sigprocmask(SIG_BLOCK, &set, NULL);

    int fd = 0; 
    int n; 
    char buf[100]; 
  
    if ((fd = open(FIFO_FILE,O_WRONLY | O_NONBLOCK)) < 0) //非阻塞方式打开 
    { 
        perror("open error"); 
        exit(-1); 
    } 
    while (1) 
    { 
        fgets(buf,100,stdin); 
        n = strlen(buf); 
        if ((n = write(fd,buf,n)) < 0) 
        { 
                printf("The FIFO has not been read yet.Please try later,errno =%d. %s\n", errno, strerror(errno)); 
        } 
    } 
    return 0; 
} 
