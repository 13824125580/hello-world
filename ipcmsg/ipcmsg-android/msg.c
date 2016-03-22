#include <stdio.h>  
#include <stdlib.h>  
#include <unistd.h>  
#include <sys/msg.h>  
#include <sys/syscall.h>
#include <sys/types.h>
#include <signal.h>
 
#define __DEBUG  
#ifdef __DEBUG  
#define DBG(fmt,args...) fprintf(stdout,  fmt,  ##args)  
#else  
#define DBG(fmt,args...)  
#endif  
#define ERR(fmt,args...) fprintf(stderr,  fmt,  ##args)  
  
/* 
消息队列初始化 
msgKey:消息队列键值 
qid:返回值，消息队列id 
*/  
int Msg_Init( int msgKey )  
{  
    int qid;  
    key_t key = msgKey;  
    /* 
    消息队列并非私有，因此此键值的消息队列很可能在其他进程已经被创建 
    所以这里尝试打开已经被创建的消息队列 
    */  
    //qid = msgget(key,0);  
    qid = syscall(SYS_msgget, key,0);  
    if(qid < 0){  
        /* 
        打开不成功，表明未被创建 
        现在可以按照标准方式创建消息队列 
        */  
        //qid = msgget(key,IPC_CREAT|0666);  
        qid = syscall(SYS_msgget, key, IPC_CREAT|0666);  
        DBG("Create msg queue id:%d\n",qid);  
    }  
    DBG("msg queue id:%d\n",qid);  
    return qid;  
}  
/* 
杀死消息队列 
qid:消息队列id 
*/  
int Msg_Kill(int qid)  
{  
    //msgctl(qid, IPC_RMID, NULL);  
    syscall(SYS_msgctl, qid, IPC_RMID, NULL);  
    DBG("Kill queue id:%d\n",qid);  
    return 0;  
}
