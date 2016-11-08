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

#define DBG(fmt,...)    do { printf("%s line %d "fmt, __func__, __LINE__, ##__VA_ARGS__); } while(0)
#define SOCKET_NAME 	"/var/tmp/socksel"

int main()  
{  
  int len;
  /* create a socket */  
  int sockfd = socket(AF_UNIX, SOCK_STREAM, 0);  
    
  struct sockaddr_un address;  
  memset(&address, 0x00,sizeof(address));

#if 0
  address.sun_family=AF_UNIX;
  sprintf(address.sun_path, "%s%05d", SOCKET_NAME, getpid());

  len = sizeof(address.sun_family) + strlen(address.sun_path);
  unlink(address.sun_path);

  if(bind(sockfd, (struct sockaddr *)&address, len) < 0)
  {
	DBG("bind clinet failure.\n");
	return -1;
  }	
  
  if(chmod(address.sun_path, 0666) < 0)
  {
	DBG("chmod failure.\n");
	return -1;
  }
 
#endif
  memset(&address, 0x00,sizeof(address));
  address.sun_family = AF_UNIX;  
  strcpy(address.sun_path, SOCKET_NAME);  
  len = sizeof(address.sun_family) + strlen(address.sun_path);    
  /* connect to the server */  
  int result = connect(sockfd, (struct sockaddr *)&address, len);  
  if(result == -1)  
  {  
    perror("connect failed: ");  
    exit(1);  
  }  
    
  /* exchange data */  
  char ch = 'A';  
while(1)
{
  write(sockfd, &ch, 1);  
  sleep(1);
}
//  read(sockfd, &ch, 1);  
  printf("get char from server: %c\n", ch);  
    
  /* close the socket */  
  close(sockfd);  
    
  return 0;  
}  
