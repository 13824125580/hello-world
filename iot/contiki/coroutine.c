/*
 * =====================================================================================
 *
 *       Filename:  coroutine.c
 *
 *    Description:  used for simulate the multi-task mechanism of contiki
 *
 *        Version:  1.0
 *        Created:  2017年01月24日 13时51分06秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int function(void) 
{   
    static int i, state = 0; //注意这是静态变量  
    switch (state) 
    {    
        case 0: //这里是开始入口    
        for (i = 0; i < 10; i++) 
        {      
		state = 1; //现在设置静态变量为1了
		printf("%s line %d, i = %d.\n", __func__, __LINE__, i);
		return i;             
	case 1:; //到这里选择会被跳出   
	}   
	return 0;
    } 
}


int main(void)
{
	int j;
	while(1)
		printf("%s line %d, j = %d.\n", __func__, __LINE__, function());

	return 0;
}
