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
  
static int thread_quit_flag = 0;  
int msgq_hdl;//消息队列id  
int gMyProcId = MSG_TYPE_MSG1;  


void SetXxThreadQuit()  
{     
    /*quit*/  
    thread_quit_flag = 1;  
}  
void *message_sender(void *arg)  
{  
    char *cmd = (char*)arg;  
    DBG("%s line %d, arg value=%s\n",__func__, __LINE__, cmd);  
    static int i=0;  
    while(thread_quit_flag==0){  
  
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
        //msgsnd(msgq_hdl,(void*)&msg,sizeof(MSG_BUF)-sizeof(long),0);  
        syscall(SYS_msgsnd, msgq_hdl,(void*)&msg,sizeof(MSG_BUF)-sizeof(long),0);  
        DBG("msgsnd cmd = %d\n",msg.cmd);  
        sleep(1);  
          
    }  
    /*arg是将指针带进来，cmd则相反，或者设置 NULL*/  
    pthread_exit(cmd);  
    //pthread_exit(NULL);  
}  
void *message_comsumer(void *arg)  
{  
    char *cmd = (char*)arg;  
    DBG("arg value=%s\n",cmd);  
    while(thread_quit_flag==0){  
          
        MSG_BUF msg;  
        memset(&msg,0,sizeof(MSG_BUF));  
        /* 
        参数1参数2参数3参数5与msgsnd相同， 
        参数4是指定消息接收的范围，只有指定的消息type才会接收 
        */  
        //int ret = msgrcv(msgq_hdl,(void*)&msg,sizeof(MSG_BUF)-sizeof(long),gMyProcId,0);  
        int ret = syscall(SYS_msgrcv, msgq_hdl,(void*)&msg,sizeof(MSG_BUF)-sizeof(long),gMyProcId,0);  
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
  
static pthread_t message_sender_hdl;  
static pthread_t message_consumer_hdl;  
int init_thread(void)  
{  
    int ret;  
    /* 
      第二个参数是设置线程属性，一般很少用到(设置优先级等)，第四个参数为传递到线程的指针， 
      可以为任何类型 
    */  
    ret = pthread_create(&message_sender_hdl,NULL,message_sender,"1 thread");  
    if(ret == -1){  
        /*成功返回0.失败返回-1*/  
        ERR("Ctreate Thread ERROR\n");  
        return -1;  
    }  
  
    ret = pthread_create(&message_consumer_hdl,NULL,message_comsumer,"2 thread");  
    if(ret == -1){  
        /*成功返回0.失败返回-1*/  
        ERR("Ctreate Thread ERROR\n");  
        return -1;  
    }  
      
    return 0;  
}  
  
int main(void)  
{  
	msgq_hdl = Msg_Init(MSG_KEY);  

	if(init_thread() == -1)
    	{  
    		exit(1);  
	}  

	pthread_join(message_sender_hdl, NULL);
	pthread_join(message_consumer_hdl, NULL);

	Msg_Kill(msgq_hdl);  

	return 0;  
}  
