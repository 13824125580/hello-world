#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <pthread.h>
#include <unistd.h>

#define min(x,y)	(((x) < (y))? (x) : (y))

typedef struct fifo
{
	uint32_t 	in;
	uint32_t 	out;
	uint32_t 	size;
	uint8_t 	*data;
}fifo_t;



int32_t  fifo_init(fifo_t *fifo, uint8_t *buf, uint32_t size)
{
	if((buf == NULL) || (size == 0) || (fifo == NULL))
	{
		return -1;
	}

	fifo->size = size;
	fifo->data = buf;
	fifo->in   = 0;
	fifo->out  = 0;

	return 0;
}

int32_t fifo_exit(fifo_t *fifo)
{
	if(fifo == NULL)
	{
		return -1;
	}
	
	fifo->data = NULL;
	fifo->size = 0;
	fifo->in   = 0;
	fifo->out  = 0;
	
	return 0;
}

int32_t fifo_reset(fifo_t *fifo)
{
	if(fifo == NULL)
	{
		return -1;
	}
	
	fifo->in = fifo->out = 0;

	return 0;
}

uint32_t fifo_get_used(fifo_t *fifo)
{
	if(fifo == NULL)
	{
		return -1;
	}
	
	return (fifo->in - fifo->out + fifo->size) % fifo->size;
}

uint32_t fifo_is_full(fifo_t *fifo)
{
	if(fifo == NULL)
	{
		return -1;
	}

	return  (((fifo->in + 1) % fifo->size) == fifo->out);
}

int32_t fifo_in(fifo_t *fifo, uint8_t* buf, uint32_t size)
{
	if((fifo == NULL) || (buf == NULL))
	{
		return -1;
	}

	uint32_t aval = fifo->size - 1 - (fifo->in - fifo->out + fifo->size) % fifo->size;	
			
	if(aval < size)
	{
		size = aval;
	}

	size = size - size%188;
	if(size < 188)
		return 0;
	
	uint32_t l = min(size, fifo->size-fifo->in);
	 
       memcpy(fifo->data + fifo->in, buf, l);
       memcpy(fifo->data,buf+l, size -l);
	
	fifo->in = (fifo->in + size) % fifo->size;
	return  size;

}

int32_t fifo_out(fifo_t *fifo, uint8_t *buf, uint32_t size)
{
	uint32_t l;
	
	l = (fifo->in - fifo->out + fifo->size) % fifo->size;

	if(size > l)
	{
	    size = l;
	}
	printf("%s line %d, size = %d, l = %d.\n", __func__, __LINE__, size, l);
	size = size - size % 188;
	if(size < 188)
		return 0;

	uint32_t len = min(fifo->size - fifo->out, size);
	//printf("%s line %d, fifo->out = %d,fifo->in = %d, len = %d.\n", __func__, __LINE__, fifo->out, fifo->in, size);
	memcpy(buf, fifo->data + fifo->out, len );
	memcpy(buf + len,fifo->data, size -len);
	
	fifo->out = (fifo->out + size) % fifo->size;
	return size; 
}

#define PKTNUM		21
fifo_t fifo_obj; 
pthread_mutex_t mutex; 
void *thr_fn(void *arg)
{
    unsigned char buf[PKTNUM * 188];
    memset(buf, 0x00, 188 * PKTNUM);
    while(1)
    {
    	memset(buf, 0x00, 188);
	pthread_mutex_lock(&mutex);
	int size = fifo_out(&fifo_obj, buf, PKTNUM * 188);
	pthread_mutex_unlock(&mutex);
	int oldout;	
	if(buf[0] != 0x47 && size != 0)
        {		
		while(1)
			sleep(1);
		while(1)
		{
			unsigned char *buf2 = fifo_obj.data + fifo_obj.out;
			printf("\nerror happend! size = %d, in %d, out %d.buf[0] = 0x%02x,oldout = %d\n", size,fifo_obj.in, fifo_obj.out,buf[0],oldout);
			int i = 0;
			for(i = 0; i < 188; i ++)
			{
				if(i % 16 == 0)
					printf("\n");
				printf("0x%02x ", buf[i]);
			}
			printf("\n");
			for(i = 0; i < 188 *2; i ++)
			{
				if(i % 16 == 0)
					printf("\n");
				 printf("0x%02x ",buf2[i]);
			}
			printf("\n");
			buf2 = fifo_obj.data + oldout;
			
			for(i = 0; i < 188; i ++)
			{
				if(i %16 == 0)
					printf("\n");
				printf("0x%02x ", buf2[i]);
			}
		}
	}
	else
		printf("size = %d. fifo_obj.in = %d,fifo_obj.out = %d.\n",size, fifo_obj.in, fifo_obj.out);
	oldout = fifo_obj.out;
	
    }
    return NULL;
}

int main(void)
{
    int err;
    pthread_t ntid;
    pthread_mutex_init(&mutex, NULL);

    unsigned char *buffer = (unsigned char *)malloc(0x200000);
    memset(buffer,0x00, 0x200000);
    fifo_init(&fifo_obj, buffer, 0x200000);
    unsigned char buf[188];
    memset(buf, 0x00, 188);
    buf[0] = 0x47;
    err = pthread_create(&ntid, NULL, thr_fn, NULL);
    if (err != 0)
        printf("can't create thread: %s\n", strerror(err));
    while(1)
    {
	pthread_mutex_lock(&mutex);
	int size = fifo_in(&fifo_obj, buf, 188);	
	pthread_mutex_unlock(&mutex);
	//printf("fifo_obj.in  = %d, fifo_obj,out = %d.size = %d.\n", fifo_obj.in, fifo_obj.out,size);
    }
    pthread_join(ntid,NULL);
    return EXIT_SUCCESS;
}
