// Windows 头文件:
#include "GUI.h"
#include "LCDConf.h"
#include <GL/glut.h>
#include <pthread.h>

void lcd_sim_init(int argc, char **argv); 
void MainTask(void);
void fb_test(int c);

void* demo_thread(void *arg)
{
    usleep(100000);
    MainTask();     //GUI Demo
    while(1);
}

//主函数	
extern framebuffer_init(void);
int main(int argc, char *argv[])
{ 
    pthread_t tid;
    framebuffer_init();
    pthread_create(&tid,NULL,demo_thread,NULL);
    
    printf("argc = %d, argv[0] = %s.\n", argc, argv[0]);
    lcd_sim_init(argc,argv);
    return 0;
} 

