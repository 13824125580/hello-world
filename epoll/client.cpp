//EchoClient.cpp
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <string.h>

int main(int argc, char* argv[])
{
    int fd=socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
    if(fd<0)
    {
        perror("Create Scoket Error\n");
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in serverAddr;
    bzero(&serverAddr, sizeof serverAddr);
    serverAddr.sin_family=AF_INET;
    serverAddr.sin_port=htons(12345);
    serverAddr.sin_addr.s_addr=inet_addr("127.0.0.1");
    if(connect(fd, (struct sockaddr*)&serverAddr, sizeof serverAddr)<0)
    {
        perror("Connect Error\n");
        exit(EXIT_FAILURE);
    }

    char sendBuf[128]={0};
    char recvBuf[128]={0};

    while(fgets(sendBuf, sizeof sendBuf, stdin) != NULL)
    {
        write(fd, sendBuf, strlen(sendBuf));
        read(fd, recvBuf, sizeof recvBuf);

        fputs(recvBuf, stdout);

        bzero(sendBuf, sizeof sendBuf);
        bzero(recvBuf, sizeof recvBuf);
    }

    close(fd);

    return 0;

}
