/*
 * =====================================================================================
 *
 *       Filename:  odirect.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2016年12月12日 13时47分43秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

static int operator-(struct timeval& lsh, struct timeval& rsh)
{
    if (lsh.tv_sec==rsh.tv_sec)
    {
        return lsh.tv_usec - rsh.tv_usec;
    }
    else
    {
        return (lsh.tv_sec-rsh.tv_sec)*1000000 + (lsh.tv_usec - rsh.tv_usec);
    }
}

void test()
{
    struct timeval start;
    struct timeval end;
    const int DATA_LEN = 1024*1024*200; //200MB
    char* pData = NULL;
    printf("page size=%d\n", getpagesize());
    int nTemp = posix_memalign((void**)&pData, getpagesize(), DATA_LEN);
    if (0!=nTemp)
    {
        perror("posix_memalign error");
        return;
    }
    //pData[DATA_LEN-1] = '\0';
    gettimeofday(&start, NULL);
    int fd = open("write_direct.dat", O_RDWR | O_CREAT | O_DIRECT);
    if (fd<0)
    {
        perror("open error:");
        return;
    }
    memset(pData, 0x5a, DATA_LEN);
    int nLen = write(fd, pData, DATA_LEN);
    if (nLen<DATA_LEN)
    {
        perror("write error:");
        return;
    }
    close(fd);
    fd = -1;

    gettimeofday(&end, NULL);
    free(pData);
    pData = NULL;
    //显示占用时间
    struct tm stTime;
    localtime_r(&start.tv_sec, &stTime);
    char strTemp[40];
    strftime(strTemp, sizeof(strTemp)-1, "%Y-%m-%d %H:%M:%S", &stTime);
    printf("start=%s.%07d\n", strTemp, start.tv_usec);
    //
    localtime_r(&end.tv_sec, &stTime);
    strftime(strTemp, sizeof(strTemp)-1, "%Y-%m-%d %H:%M:%S", &stTime);
    printf("end =%s.%07d\n", strTemp, end.tv_usec);
    printf("spend=%d 微秒\n", end-start);
}

int main()
{
    test();
    return 1;
}
