#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#define    NUM_THREADS     16 

typedef struct pthread_private_data
{
	pthread_cond_t *cond;
	pthread_mutex_t *mutex;
	unsigned long  thread_ino;
}thread_cookie_t;

static unsigned int lock = 0;
static pthread_mutex_t mtx=PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t cond=PTHREAD_COND_INITIALIZER; 

void *thread_func_entry(void *args)
{
    //pthread_detach(pthread_self());
    thread_cookie_t *cookie = (thread_cookie_t*)args;

    pthread_mutex_lock(cookie->mutex);
    while(lock == 0)
    {
	pthread_cond_wait(cookie->cond, cookie->mutex);
    }
    pthread_mutex_unlock(cookie->mutex);
    printf("%s line %d, print from thread.cookie -> thread_ino = %ld.\n", __func__, __LINE__, cookie->thread_ino);
    return (void*)cookie->thread_ino;
}
 
int main(void)
{
    int rc,t;
    thread_cookie_t thread_cookie[NUM_THREADS];
    pthread_t thread[NUM_THREADS];
    void* status;
 
    for( t = 0; t < NUM_THREADS; t++)
    {
        printf("%s line %d, creating thread %d.\n", __func__, __LINE__, t);
	thread_cookie[t].thread_ino = t;
	thread_cookie[t].cond = &cond;
	thread_cookie[t].mutex= &mtx;
        rc = pthread_create(&thread[t], NULL, thread_func_entry, &thread_cookie[t]);
        if (rc)
        {
            printf("%s line %d, create thread failed, return code is %d\n", __func__, __LINE__, rc);
            return EXIT_FAILURE;
        }
    }
    sleep(10);
    pthread_mutex_lock(&mtx);
    lock = 1;
    pthread_cond_broadcast(&cond);
    //pthread_cond_signal(&cond);
    pthread_mutex_unlock(&mtx);

    for( t = 0; t < NUM_THREADS; t++)
    {
        pthread_join(thread[t], &status);
	printf("%s line %d, return %ld.\n", __func__, __LINE__, (unsigned long)status);
    }

    return EXIT_SUCCESS;
}
