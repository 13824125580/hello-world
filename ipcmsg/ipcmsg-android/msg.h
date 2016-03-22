    #ifndef _M_MSG_H_  
    #define _M_MSG_H_  
      
      
    /*消息队列键值*/  
    #define MSG_KEY         0x12345  
      
    /* 
    消息类型定义 
    通过消息类型接收特定组的消息 
    而不是消息队列上的所以消息都接收 
    */  
    enum {  
        MSG_TYPE_START = 0,  
      
        MSG_TYPE_MSG1,  
        MSG_TYPE_MSG2,  
        MSG_TYPE_MSG3,  
        MSG_TYPE_MSG4,  
        MSG_TYPE_MSG5,  
      
        MSG_TYPE_END  
    };  
          
    /* 
    用于发送接收的消息buf 
    */  
    typedef struct _MSG_BUF{  
        long Des;   //消息buf结构体必须要有的成员，且必须大于0  
        int  Src;   //自定义，发送者id  
        int  cmd;   //自定义，数据区，根据需要定义  
    }MSG_BUF;  
      
    int Msg_Init(int msgKey);  
    int Msg_Kill(int qid);  
      
    #endif  
