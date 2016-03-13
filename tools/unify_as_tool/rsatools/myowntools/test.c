#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <inttypes.h>
#include "sha1.h"
#include "sha256.h"
#include "sha384.h"
#include "sha512.h"
#include "rsaeuro.h"
#include "rsa.h"
extern int rsapublicfunc(unsigned char *, unsigned int *, unsigned char *, unsigned int , R_RSA_PUBLIC_KEY *);
extern int rsaprivatefunc(unsigned char *, unsigned int *, unsigned char *, unsigned int, R_RSA_PRIVATE_KEY *);
int main(int argc , char *argv[])

{
	int ret = 0;
	FILE *file;
	R_RSA_PUBLIC_KEY publicKey;
	R_RSA_PRIVATE_KEY privateKey;
	printf("\t*****************************ALI demo tool for RSA signature with its sample keypair**********************************************************\n");
	if(argc != 2)
	{
		printf("\t\t%s line[%d]:Input para count is not right.!\n",__func__,__LINE__);
		ret = 1;
		goto OUT;
	}
	printf("\t\tWill sign file %s with ali sample key,digest algo is SHA256\n",argv[1]);
	if((file = fopen ("./ali_rsa.key", "rb")) == NULL)
	{
		printf("\t\t%s line[%d]:ERROR: Cannot open a file with that name.  Try again.\n",__func__,__LINE__);
		ret = 1;
		goto OUT;
	}

	if((fread(&publicKey, sizeof(publicKey), 1, file)) != 1) 
	{
		printf("\t\t%s line [%d]:ERROR: Cannot Read Public Key from File.\n",__func__,__LINE__);
		ret = 1;
		goto OUT;
	} 
	else if((fread(&privateKey, sizeof(privateKey), 1, file)) != 1)
	{
		printf("\t\t%s line [%d]:ERROR: Cannot Read Private Key from File.\n",__func__,__LINE__);
		ret = 1;
		goto OUT;
	}
	printf("\t\t[1]:Open ALI RSA key pair success.\n");
	FILE *filesign;
	if((filesign = fopen (argv[1], "rb")) == NULL)
	{
		printf("\t\t%s line [%d]:Open signed file Error.\n",__func__,__LINE__);
		ret = 1;
		goto OUT;
	}
	unsigned int file_size;
	fseek(filesign,0L,SEEK_END);
	file_size = ftell(filesign);
	fseek(filesign,0L,SEEK_SET);
	printf("\t\t[2]:Open signed file %s Success.size = %d.\n",argv[1],file_size);
	
	unsigned char *psignature = (unsigned char *)malloc(file_size + 0x0f);
	if((fread(psignature, file_size, 1, filesign)) != 1)
	{
		printf("\t\t%s line [%d]:ERROR: Cannot Read data from File.\n",__func__,__LINE__);
		ret = 1;
		goto OUT;
	} 
  union {
    SHA1Context sha1;
    SHA256Context sha256;
    SHA384Context sha384;
    SHA512Context sha512;
  } s;
  union {
    uint8_t sha1[SHA1_HASH_SIZE];
    uint8_t sha256[SHA256_HASH_SIZE];
    uint8_t sha384[SHA384_HASH_SIZE];
    uint8_t sha512[SHA512_HASH_SIZE];
  } h;
  
  SHA256Init (&s.sha256);
  SHA256Update (&s.sha256, psignature, file_size);
  SHA256Final (&s.sha256, h.sha256);
	int i = 0;
	printf("\t\t[3]:HASH256 result:\n");
	for(i = 0; i < 32; i ++)
	{
		if ((i%16) == 0)
			printf("\t\t\t");
		printf("0x%02x\t",h.sha256[i]);
		if((i + 1) % 16 == 0)
			printf("\n");
	}
	unsigned char signresult[256];
	unsigned int signlen;
	memset(signresult,0x00,256);
	rsaprivatefunc(signresult,&signlen,h.sha256,32,&privateKey);
	printf("\t\t[4]:Signed len %d,The Signature is:\n",signlen);
	for(i = 0; i < 256; i ++)
	{
		if ((i%16) == 0)
			printf("\t\t\t");
		printf("0x%02x\t",signresult[i]);
		if((i + 1) % 16 == 0)
			printf("\n");
	}
	unsigned char decryptsignature[256];
	unsigned int decryptlen;
	memset(decryptsignature,0x00,256);
	rsapublicfunc(decryptsignature,&decryptlen,signresult,256,&publicKey);
	printf("\t\t[5]:Decrypt sinature len %d,The Decrypt Signature is:\n",decryptlen);
	for(i = 0; i < 256; i ++)
	{
		if ((i%16) == 0)
			printf("\t\t\t");
		printf("0x%02x\t",decryptsignature[i]);
		if((i + 1) % 16 == 0)
			printf("\n");
	}
	
	if(!memcmp(h.sha256,decryptsignature + 0xe0,32))
	{
		printf("\t\t[6]:Signature Is Right!\n");
	}
	else
	{
		printf("\t\t[6]:Signature Is Wrong!\n");
		ret = 1;
		goto OUT;
	}
		
	FILE * file_sigout;
	if ((file_sigout = fopen ("./sig_256.abs", "w+b")) == NULL)
	{
		printf("\t\t%s line[%d]:Create Save sig256 file Failed!\n",__func__,__LINE__);
		ret = 1;
		goto OUT;
	}
	printf("\t\t[7]:Create save signature file success!\n");
	if(fwrite(signresult,1,256,file_sigout) == 256)
	{
		printf("\t\t[8]:Write signature to file ok!\n");
	}
	
	FILE *merge_file;
	if ((merge_file = fopen ("./merge_boot_sign_all.abs", "w+b")) == NULL)
	{
		printf("\t\t%s line[%d]:Create Bootloader Failed!\n",__func__,__LINE__);
		ret = 1;
		goto OUT;
	}
	unsigned char *merge_all = malloc(file_size + 256);
	memcpy(merge_all,psignature,file_size);
	memcpy(merge_all + file_size,signresult,256);
	if(fwrite(merge_all,1,file_size + 256,merge_file) == (file_size + 256))
	{
		printf("\t\t[9]:Write signature to file ok len 0x%x!\n",file_size + 256);
	}
OUT:
  printf("\t**********************************************************************************************************************************************\n");
	return ret;
}

