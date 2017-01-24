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


#define Begin() static void* state=NULL; int yield = 0;  do { if (state!=NULL) goto *state; } while(0)
#define Yield(x)  \
do { __label__ resume; yield = 1; resume: state = &&resume; if(yield == 1) return x;} while (0) 
#define End()  


int function(void) 
{   
    static int i;   
    Begin();   
    for (i = 0; i < 10; i++)     
   	 Yield(i);   
    End(); 

    return 0;
}

int main(void)
{
	
	while(1)
		printf("%s line %d, function() = %d.\n", __func__, __LINE__, function());

	return 0;
}
