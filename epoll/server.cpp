//EchoEpoll.cpp
#include <iostream>
#include <sys/epoll.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <string.h> //bzero Function
#include <stdlib.h>//atoi()

#define MAX_EVENTS 1000

struct myevent
{
public:
    int fd;
    void (*callBack)(int fd, int events, void* arg);
    int events;
    void* arg;
    bool status;//ture represent it has been added to epoll
    char buffer[128];
    int len;//use length
    int offset;//mark from where to send
    long  lastActiveTime;
};

//Global variables
int g_epollFd;//epoll fd
myevent g_Events[MAX_EVENTS+1];//event set. The last one is used to accept
//Set event 
void SetEvent(myevent* ev, int fd, void(*callBack)(int, int , void*), void* arg)
{
    ev->fd=fd;
    ev->callBack=callBack;
    ev->events=0;
    ev->arg=arg;
    ev->status=false;
    bzero(ev->buffer,sizeof ev->buffer);
    ev->offset=0;
    ev->len=0;
    ev->lastActiveTime=time(NULL);
}
//only set event's callback function, don't set it's buffer
void SetEventCallback(myevent* ev, void(*callBack)(int, int ,void*))
{
    ev->callBack=callBack;
}

void AddEvent(int epfd, int events, myevent* ev)
{
    struct epoll_event epv={0,{0}};

    epv.data.ptr=ev;
    epv.events=ev->events=events;

    int op;
    if(ev->status)// have been added
        op=EPOLL_CTL_MOD;
    else
    {
        op=EPOLL_CTL_ADD;
        ev->status=true;
    }
    if(epoll_ctl(epfd,op,ev->fd,&epv)<0)
        printf("Event add failed  FD=%d,events=%d\n",ev->fd,events);
    else
        printf("Event add successfully,FD=%d,op=%d,events=%0x\n",ev->fd,op,events);

}

void DelEvent(int epfd, myevent* ev)
{
    struct epoll_event epv={0,{0}};
    if(!ev->status)//have not been added
        return;
    epv.data.ptr=ev;
    ev->status=false;
    epoll_ctl(epfd,EPOLL_CTL_DEL,ev->fd,&epv);
}

//forward declation
void RecvData(int fd, int events, void* arg);
void SendData(int fd, int events, void* arg);
void AcceptConnection(int fd, int events, void* arg)
{
    struct sockaddr_in sin;
    socklen_t len=sizeof(struct sockaddr_in);

    int nfd=accept(fd,(struct sockaddr*)&sin,&len) ;
    if(nfd==-1)
    {
        if(errno!= EAGAIN&&errno!=EINTR)
        {}
        printf("%s, accept, %d",__func__,errno);

    }
    int i;
    do
    {
        for( i=0; i<MAX_EVENTS;++i)//find the first unused Event
        {
            if(g_Events[i].status==false)
                break;
        }
        if(i==MAX_EVENTS)
        {
            printf("%s:max connection limit %d\n",__func__,MAX_EVENTS );
            break;//break do-while

        }
        int iret=fcntl(nfd,F_SETFL, O_NONBLOCK);
        if(iret<0)
        {
            printf("%s, fctl nonblocking failed:%d",__func__, iret);
            break;//break do-while
        }
        //set nfd, wait to receive data
        SetEvent(&g_Events[i], nfd, RecvData,&g_Events[i]);
        AddEvent(g_epollFd,EPOLLIN,&g_Events[i]);
    }while(0);
    printf("new connection[%s:%d] [time:%d], pos[%d]\n",inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),g_Events[i].lastActiveTime,i);

}

void RecvData(int fd, int events, void* arg)
{
    struct  myevent* ev=(struct myevent*)arg;
    int len=recv(fd,ev->buffer+ev->len,sizeof(ev->buffer)-1-ev->len,0);
    //has been received data, delete recv event
    DelEvent(g_epollFd,ev);
    if(len>0)
    {
        ev->len+=len;
        ev->buffer[len]='\0';
        printf("C[%d]:%s\n",fd,ev->buffer);
        SetEventCallback(ev,SendData);
        //ev->callBack=SendData;
        AddEvent(g_epollFd,EPOLLOUT,ev);
    }
    else if(len==0)
    {
        close(ev->fd);
        printf("[fd=%d] pos[%d], closed gracefully.\n",fd, ev->events);
    }
    else
    {
        close(ev->fd);
        printf("recv[fd=%d] errno[%d]:%s\n",fd,errno,strerror(errno));
    }
}

void SendData(int fd, int events, void* arg)
{
    struct myevent* ev=(struct myevent*)arg;
    int len=send(fd, ev->buffer+ev->offset, ev->len-ev->offset, 0);
    if(len>0)
    {
        printf("send [fd=%d],[%d<->%d]%s\n",fd,len,ev->len,ev->buffer);
        ev->offset+=len;
        if(ev->offset==ev->len)// all data has been send
        {
            DelEvent(g_epollFd,ev);
            SetEvent(ev,fd,RecvData,ev);//reset event
            AddEvent(g_epollFd,EPOLLIN,ev);
        }
    }
    else
    {
        close(ev->fd);
        DelEvent(g_epollFd,ev);
        printf("send[fd=%d] errno[%d]\n",fd,errno);
    }
}

void InitListenSocket(int epfd, short port)
{
    int listenFd=socket(AF_INET, SOCK_STREAM,0);
    fcntl(listenFd, F_SETFL, O_NONBLOCK);//Set listen socket to Non-block
    printf("server listen fd=%d\n",listenFd);
    SetEvent(&g_Events[MAX_EVENTS], listenFd, AcceptConnection, &g_Events[MAX_EVENTS]);
    AddEvent(epfd, EPOLLIN,&g_Events[MAX_EVENTS]);

    sockaddr_in sin;
    bzero(&sin, sizeof(sin));
    sin.sin_family=AF_INET;
    sin.sin_addr.s_addr=INADDR_ANY;
    sin.sin_port=htons(port);
    bind(listenFd,(const sockaddr*)&sin, sizeof(sin));
    listen(listenFd,MAX_EVENTS);
}
int main(int argc, char* argv[])
{
    unsigned short port=12345;
    if(argc==2)
    {
        port=atoi(argv[1]);
    }

    g_epollFd=epoll_create(MAX_EVENTS);
    if(g_Events<=0)
        printf("Create epoll failed.\n");
    InitListenSocket(g_epollFd,port);
    printf("Server running:port %d\n",port);

    struct epoll_event events[MAX_EVENTS];
    int checkPos=0;
    while(true)
    {
        long now=time(NULL);
        for(int i=0; i< 100; ++i, checkPos++)
        {
            if(checkPos==MAX_EVENTS)
                checkPos=0;
            if(g_Events[checkPos].status==false)
                continue;
            long duration=now - g_Events[checkPos].lastActiveTime;
            //close time out fd
            if(duration>=60)//timeout
            {
                close(g_Events[checkPos].fd);
                printf("fd=%d timeout:%d--%d\n",g_Events[checkPos].fd, g_Events[checkPos].lastActiveTime , now);
                DelEvent(g_epollFd,&g_Events[checkPos]);

            }
        }

        int fds=epoll_wait(g_epollFd,events,MAX_EVENTS,1000);
        if(fds<0)
        {
            printf("epoll_wait error\n");
            break;
        }

        for(int i=0; i<fds;++i)
        {
            myevent* ev=(struct myevent*)events[i].data.ptr;
            if((events[i].events&EPOLLIN)&&(ev->events&EPOLLIN))
            {
                ev->callBack(ev->fd, events[i].events, ev->arg);
            }
            if((events[i].events&EPOLLOUT)&&(ev->events&EPOLLOUT))
            {
                ev->callBack(ev->fd, events[i].events, ev->arg);
            }
        }
    }

    return 0;
}
