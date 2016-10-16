#include <memory.h>
#include <math.h>
#include <pthread.h>
#include <GL/glut.h>
#include <fcntl.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include "GUI.h"
#include "LCDConf.h"

static GLuint fb0[LCD_YSIZE][LCD_XSIZE];
static unsigned char *g_fb0_buf;
static long int num=0;
static int XSIZE = LCD_XSIZE;
static int YSIZE = LCD_YSIZE;

void Touch_Pressed(int x, int y);
void Touch_Release(void);

void mouse(int button, int state, int x, int y)
{
    switch(button)
    {
    case GLUT_LEFT_BUTTON:
        switch (state)
        {
        case GLUT_DOWN:
            Touch_Pressed(x,y);  
            break;

        case GLUT_UP:
            Touch_Release();  
            break;
        }
    break;
    
    case GLUT_RIGHT_BUTTON:
        break;
        
    case GLUT_MIDDLE_BUTTON:
        break;
    }
}

void display(void)
{
  //  glClear(GL_COLOR_BUFFER_BIT);
    //glRectf(-1.0f, -1.0f, 1.0f, 1.0f);
   // glDrawPixels(LCD_XSIZE,LCD_YSIZE, GL_RGBA, GL_UNSIGNED_BYTE, fb0);
 //   glFlush();
}

void timerProc(int id)
{
    display();
    glutTimerFunc(20,timerProc,1);//需要在函数中再调用一次，才能保证循环
}

void fb_test(int c)
{
   int i, j;
    
   for (i = 0; i < LCD_XSIZE; i++) 
   {
      for (j = 0; j < LCD_YSIZE; j++)
      {
         //c_fb0_buf[j][i] = c;
         *(unsigned int *)(g_fb0_buf + j * LCD_XSIZE * 4 + i *4) = c;
      }
   }
}

int argcc;
char ** argvv;
static void * timer_vsync(void* arg)
{
    //glutInit(&argcc, argvv);
    //glutInitDisplayMode(GLUT_RGB | GLUT_SINGLE);
    //glutInitWindowPosition(800, 300);
    //glutInitWindowSize(LCD_XSIZE, LCD_YSIZE);
    //glutCreateWindow("OpenGL Test");
    //fb_test(0xFFFFFF);
    //glutMouseFunc(mouse);
    while(1)
    {
        display();
        usleep(20000);
    }
}

    struct fb_var_screeninfo vinfo;
    struct fb_fix_screeninfo finfo;
    int screensize;
static void framebuffer_init(void)
{
    int fd;

    fd = open("/dev/fb0", O_RDWR);
    if(fd < 0)
    {
        printf("cant open fb0.\n");
        exit(-1);
    }

    if (ioctl(fd,FBIOGET_FSCREENINFO,&finfo))  
    {  
        printf("Error reading fixed information\n");  
        exit(2);  
    }  

    if (ioctl(fd,FBIOGET_VSCREENINFO,&vinfo))  
    {  
         printf("Error reading variable information\n");  
         exit(3);  
    }  

    screensize = vinfo.xres * vinfo.yres * vinfo.bits_per_pixel / 8;  
    //screensize = (vinfo.xres+vinfo.xoffset) * (vinfo.bits_per_pixel / 8) + (vinfo.yres+vinfo.yoffset)  *  finfo.line_length;  
    g_fb0_buf =(unsigned char *) mmap (0, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fd,0);  
   if (((int) g_fb0_buf == -1) ||(g_fb0_buf == NULL)) 
   {  
        printf ("Error: failed to map framebuffer device to memory.\n");  
        exit (4);                                                                               
   }  

   return;
}

void lcd_sim_init(int argc, char **argv) 
{
    framebuffer_init();
    pthread_t tid;
    argcc = argc;
    argvv = argv;
    pthread_create(&tid, NULL, timer_vsync, NULL);
//    glutMainLoop();
    while(1)
    {
        sleep(20000);
    }
}

void LCDSIM_Init(void) 
{
    
}

void LCDSIM_SetPixelIndex(int x, int y, int Index, int LayerIndex)  
{
    int location;
//    if(x>1050 && y >720)
 //       return;
    //y = LCD_YSIZE - 1 - y;
    //g_fb0_buf[y][x] = Index;
    location = (x+vinfo.xoffset) * (vinfo.bits_per_pixel / 8) + (y+vinfo.yoffset)  *  finfo.line_length;  
    if(location > screensize)
        return;
  *(unsigned int *)(g_fb0_buf + location) = Index;

   // *(unsigned int *)(g_fb0_buf + y * LCD_XSIZE * 4 + x * 4) = Index;
}

unsigned int LCDSIM_GetPixelIndex(int x, int y, int LayerIndex)
{
    //y = LCD_YSIZE - 1 - y;
    //return(g_fb0_buf[y][x]);   
    int location;
    location = (x+vinfo.xoffset) * (vinfo.bits_per_pixel / 8) + (y+vinfo.yoffset)  *  finfo.line_length;  
  return *(unsigned int *)(g_fb0_buf + location);
 //   return *(unsigned int *)(g_fb0_buf + y * LCD_XSIZE * 4 + x *4);
}

void LCDSIM_FillRect(int x0, int y0, int x1, int y1, int Index, int LayerIndex)
{

}

void LCDSIM_SetLUTEntry(U8 Pos, LCD_COLOR color, int LayerIndex) 
{

}

GUI_PID_STATE Touch_Status;
void Touch_Pressed(int x, int y)
{
    Touch_Status.Pressed = 1;
    Touch_Status.x = x;
    Touch_Status.y = y;
    GUI_TOUCH_StoreStateEx(&Touch_Status);
}

void Touch_Release(void)  //锟斤拷锟斤拷锟酵凤拷
{
    Touch_Status.Pressed = 0;
    Touch_Status.x = -1;
    Touch_Status.y = -1;
    GUI_TOUCH_StoreStateEx(&Touch_Status);
}

