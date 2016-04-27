#include<stdio.h> 
#include<stdlib.h> 
#include<unistd.h> 
#include<sys/types.h> 
#include<sys/stat.h> 
#include<fcntl.h> 
#include<errno.h> 
#include <signal.h>
  
#define FIFO_FILE "/tmp/myfifo" 

void sig_hanlder(int signo)
{
	while(1)
	printf("%s line %d. signo = %d.\n", __func__, __LINE__, signo);
	return 0;
}

  
int main() 
{ 
    signal(SIGPIPE, sig_hanlder);
    char buf[100]; 
    int n = 0; 
    int fd; 
    if ((mkfifo(FIFO_FILE,S_IRWXU) < 0) && (errno != EEXIST)) //如果该fifo文件不存在，创建之 
    { 
        perror("mkfifo error"); 
        exit(-1); 
    } 
    if ((fd = open(FIFO_FILE,O_RDONLY | O_NONBLOCK)) < 0) //非阻塞方式打开 
    { 
        perror("open error"); 
        exit(-1); 
    } 
    while (1) 
    { 
	printf("%s line %d.\n", __func__, __LINE__);
        if ((n = read(fd,buf,100)) < 0) 
        { 
	    printf("%s line %d.\n", __func__, __LINE__);
            if (errno == EAGAIN) 
            { 
                printf("No data yet\n"); 
            } 
        } 
	else
	{
	    printf("%s line %ddd buf = %s..\n", __func__, __LINE__, buf);
	    write(STDOUT_FILENO,buf,n); 
	}
        sleep(1); //sleep 
    } 
    unlink(FIFO_FILE); 
    return 0; 
}
