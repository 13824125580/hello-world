#define _GNU_SOURCE
#include <stdio.h>  
#include <stdlib.h>  
#include <unistd.h>  
#include <string.h>  
#include <pthread.h>  
#include <sys/msg.h>  
#include <sys/syscall.h>
#include <sys/types.h>
#include <signal.h>
#include <sched.h>
#include "msg.h"  
  
#define __DEBUG  
#ifdef __DEBUG  
#define DBG(fmt,args...) fprintf(stdout,  fmt,  ##args)  
#else  
#define DBG(fmt,args...)  
#endif  
#define ERR(fmt,args...) fprintf(stderr,  fmt,  ##args)  
  
static int isThreadQuit = 0;  
int gQid;//消息队列id  
int gMyProcId = MSG_TYPE_MSG1;  
/* 
某设备写操作，不同同时访问，所以所以需要线程锁保护 
1、将函数DeviceWrite中加锁 
2、在访问DeviceWrite的线程中加锁 
以上两种方法跟据需要选择其一。 
本例中在访问的线程中加锁 
*/  
void DeviceWrite(char *str)  
{  
    /*SemWait(gHndlSem);*/  
    DBG("Device Write: %s\n",str);  
    /*SemRelease(gHndlSem);*/  
}  
void SetXxThreadQuit()  
{     
    /*quit*/  
    isThreadQuit = 1;  
}  
void *XxManageThread(void *arg)  
{  
    char *cmd = (char*)arg;  
    DBG("arg value=%s\n",cmd);  
    static int i=0;  
    while(isThreadQuit==0){  
  
        MSG_BUF msg;  
        memset(&msg,0,sizeof(MSG_BUF));  
        msg.Des = MSG_TYPE_MSG1;  
        msg.Src = gMyProcId;  
        msg.cmd = i++;  
        /* 
        参数1是队列id， 
        参数2是消息buf， 
        参数3是消息buf长度但不包含long的长度， 
        参数是4是消息发送的一些设置*/  
        //msgsnd(gQid,(void*)&msg,sizeof(MSG_BUF)-sizeof(long),0);  
        syscall(SYS_msgsnd, gQid,(void*)&msg,sizeof(MSG_BUF)-sizeof(long),0);  
        DBG("msgsnd cmd = %d\n",msg.cmd);  
        sleep(1);  
          
    }  
    /*arg是将指针带进来，cmd则相反，或者设置 NULL*/  
    pthread_exit(cmd);  
    //pthread_exit(NULL);  
}  
void *XxManageThreadMutex(void *arg)  
{  
    char *cmd = (char*)arg;  
    DBG("arg value=%s\n",cmd);  
    while(isThreadQuit==0){  
          
        MSG_BUF msg;  
        memset(&msg,0,sizeof(MSG_BUF));  
        /* 
        参数1参数2参数3参数5与msgsnd相同， 
        参数4是指定消息接收的范围，只有指定的消息type才会接收 
        */  
        //int ret = msgrcv(gQid,(void*)&msg,sizeof(MSG_BUF)-sizeof(long),gMyProcId,0);  
        int ret = syscall(SYS_msgrcv, gQid,(void*)&msg,sizeof(MSG_BUF)-sizeof(long),gMyProcId,0);  
        if(ret < 0){  
            ERR("Receive msg fail!!\n");  
            break;  
        }  
        DBG("msgrcv cmd = %d\n",msg.cmd);  
        sleep(1);  
          
    }  
    /*arg是将指针带进来，cmd则相反，或者设置 NULL*/  
    pthread_exit(cmd);  
    //pthread_exit(NULL);  
}  
  
int XxManageThreadInit()  
{  
    pthread_t tManageThread;  
    pthread_t tManageThreadMutex;  
      
    //char *retn;  
    int ret;  
    /* 
      第二个参数是设置线程属性，一般很少用到(设置优先级等)，第四个参数为传递到线程的指针， 
      可以为任何类型 
    */  
    ret = pthread_create(&tManageThread,NULL,XxManageThread,"1 thread");  
    if(ret == -1){  
        /*成功返回0.失败返回-1*/  
        ERR("Ctreate Thread ERROR\n");  
        return -1;  
    }  
  
    ret = pthread_create(&tManageThreadMutex,NULL,XxManageThreadMutex,"2 thread");  
    if(ret == -1){  
        /*成功返回0.失败返回-1*/  
        ERR("Ctreate Thread ERROR\n");  
        return -1;  
    }  
      
    /* 
      设置线程退出时资源的清理方式，如果是detach，退出时会自动清理 
      如果是join，则要等待pthread_join调用时才会清理 
    */  
    pthread_detach(tManageThread);  
    pthread_detach(tManageThreadMutex);  
    //pthread_join(tManageThread,retn);  
    //DBG("retn value=%s\n",retn);  
    return 0;  
}  
  
#define TEST_MAIN  
#ifdef TEST_MAIN  
int main()  
{  
    printf("hello liuyu\n");  
    int count=3;  
  
    gQid = Msg_Init(MSG_KEY);  
    if(XxManageThreadInit()==-1){  
        exit(1);  
    }  

      
    while(count--){  
    	pthread_yield();
        DBG("[%d] main running.\n", count);  
        sleep(2);  
    }  
      
    SetXxThreadQuit();  
    /*等待线程结束*/  
    sleep(1);  
  
    /*清理消息队列*/  
    Msg_Kill(gQid);  
    DBG("waitting thread exit...\n");  
    return 0;  
}  
#endif  
