#include <sys/types.h>
#include <sys/time.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <sys/fcntl.h>
#include <sys/un.h>
#include <sys/poll.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>

#define DBG(fmt,...)    do { printf("%s line %d "fmt, __func__, __LINE__, ##__VA_ARGS__); } while(0)
#define SOCKET_NAME 	"/var/tmp/socksel"
int serv_listen(const char *name)
{
	int fd, len;
	struct sockaddr_un unix_addr;
	
	if((fd = socket(AF_UNIX, SOCK_STREAM, 0)) < 0)
	{
		DBG("create socket failure.\n");
		return -1;
	}

	fcntl(fd, F_SETFD, FD_CLOEXEC);

	unlink(name);

	memset(&unix_addr, 0x00, sizeof(unix_addr));

	unix_addr.sun_family = AF_UNIX;
	strcpy(unix_addr.sun_path, name);

	len = sizeof(unix_addr.sun_family) + strlen(unix_addr.sun_path);

	if(bind(fd, (struct sockaddr*) &unix_addr, len) < 0)
	{
		DBG("bind fd failure.err %s.\n", strerror(errno));
		return -1;
	}	

	if(chmod(name, 0666) < 0)
	{
		DBG("chmod %s failure.\n", SOCKET_NAME);
		return -1;
	}

	if(listen(fd, 5) < 0)
	{
		DBG("start listening failure.\n");
		return -1;
	}

	return fd;
}

int main(void)
{
	int listenfd;
	fd_set rfdset; 	
	fd_set tmp;
	int result;
	struct timeval timeout; 

	listenfd = serv_listen(SOCKET_NAME);
	if(listenfd < 0)
	{
		return -1;
	}

	FD_ZERO(&rfdset);
	FD_SET(listenfd, &rfdset);


	while(1)
	{
		tmp = rfdset;
		timeout.tv_sec = 2; 
        	timeout.tv_usec = 500000; 
		result = select(FD_SETSIZE, &tmp, NULL, NULL, NULL);
		
		DBG("result = %d.\n", result);
		switch(result)
		{
			case 0:
				DBG("timeout.\n");
				break;
			case -1:
				DBG("failure.\n");
				break;
			default:
				if(FD_ISSET(listenfd, &tmp))	
				{
					struct sockaddr_un unix_addr;
					int len;
					int clifd;
						
					len = sizeof(unix_addr);
					if((clifd = accept(listenfd, (struct sockaddr*)&unix_addr, &len)) < 0)
					{
						DBG("accept failure.\n");
						return -1;
					}		
				
					len -= sizeof(unix_addr.sun_family);
					unix_addr.sun_path[len] = 0;
					DBG("client socket address = %s.clifd = %d.\n", unix_addr.sun_path, clifd);
					unlink(unix_addr.sun_path);
				
					FD_SET(clifd, &rfdset);
				}
				else
				{
					int i;
					int cnt = 0;
					for(i = 3; i < 64; i ++)
					{
						if(FD_ISSET(i, &tmp))
						{
							char ch;
							int n = read(i, &ch, 1);
							if(n > 0)
							DBG("fd %d is set.ch = %c cnt = %d. n = %d.\n", i, ch, cnt ++, n);
						}
						
					}
				}
		}	
	}

	return 0;
}

