#include "GUI_X.h"
#include <pthread.h>
#include <sys/time.h> 
#include <time.h> 

#define Sleep(a)    usleep(1000*a)
/*********************************************************************
*
*       GUI_X_Init()
*/
void GUI_X_Init(void)
{

}

/*********************************************************************
*
*       GUI_X_ExecIdle()
*/
void GUI_X_ExecIdle(void)
{
    Sleep(1);
};

int timeGetTime(void)
{
    struct timeval tv;
    gettimeofday(&tv, NULL); 
    long start = ((long)tv.tv_sec)*1000+(long)tv.tv_usec/1000; 

    return((int)start);
}

/*********************************************************************
*
*      Timing:
*                 GUI_GetTime()
*                 GUI_Delay(int)

Some timing dependent routines of uC/GUI require a GetTime
and delay funtion. Default time unit (tick), normally is
1 ms.
*/
int StartTime;  //程序开始运行时的时间 该时间为从系统开启算起所经过的时间 单位为毫秒
int GUI_X_GetTime(void) 
{
    return (timeGetTime() - StartTime);
}

void GUI_X_Delay(int Period) 
{
    Sleep(Period);
}

/*********************************************************************
*
*      Multitask interface for Win32
*
*  The folling section consisting of 4 routines is used to make
*  the GUI software thread safe with WIN32
*/

pthread_mutex_t mutex_detect = PTHREAD_MUTEX_INITIALIZER;
static int _EntranceCnt;   // For debugging only ... Not required

void GUI_X_InitOS(void) 
{
	StartTime = timeGetTime();  //需要添加winmm.lib库
	//创建一个互斥量对象
        pthread_mutex_init(&mutex_detect,NULL);
}

U32 GUI_X_GetTaskId(void)
{
	return pthread_self();
}

void GUI_X_Lock(void) 
{
	pthread_mutex_lock(&mutex_detect);//加锁
	if (++_EntranceCnt > 1)
	{
		//SIM_ErrorOut("Error in GUITASK.c module ...");
	}
}

void GUI_X_Unlock(void)
{
	_EntranceCnt--;
	pthread_mutex_unlock(&mutex_detect);//解锁
}


/*********************************************************************
*
*      Text output for Logging, warnings and errors

Logging - required only for higher debug levels
*/
void GUI_X_Log     (const char *s)     { /*SIM_Log(s); */}
void GUI_X_Warn    (const char *s)     { /*SIM_Warn(s); */}
void GUI_X_ErrorOut(const char *s)     { /*SIM_ErrorOut(s);*/ }







