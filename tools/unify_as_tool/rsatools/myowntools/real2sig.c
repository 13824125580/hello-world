#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <inttypes.h>
#include <getopt.h>
#include <fcntl.h>
#include "rsaeuro.h"
#include "sha1.h"
#include "sha256.h"
#include "sha384.h"
#include "sha512.h"
extern int rsapublicfunc(unsigned char *, unsigned int *, unsigned char *, unsigned int , R_RSA_PUBLIC_KEY *);
extern int rsaprivatefunc(unsigned char *, unsigned int *, unsigned char *, unsigned int, R_RSA_PRIVATE_KEY *);
static unsigned char prefix_code[224] = {
	0x00,  0x01,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,         
	0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0xff,  0x00,  0x30,  0x31,  0x30,         
	0x0d,  0x06,  0x09,  0x60,  0x86,  0x48,  0x01,  0x65,  0x03,  0x04,  0x02,  0x01,  0x05,  0x00,  0x04,  0x20,         
};


static void sig_print_usage(char *prog)
{
	printf("Usage: %s -h help\n"
                    " This program used to encrypt .rodata and .data sections of ELF file according .map:\n"
                    "   -input <file for sigh>\n"
                    "   -key <rsa key file>\n"
                    "   -out <the outputfile including signature>\n", prog);

}

int main(int argc , char **argv)
{
	char opt;
	char inputfile[100];
	char keyfile[100];
	char outfile[100];
	int option_index;

	static struct option long_options[] = {
		{ "help",        no_argument,       0, 'h' },
		{ "input",  required_argument,  0, 'i' },
		{ "key",       required_argument, 0, 'k' },
		{ "out", required_argument, 0, 'o' },
		{ 0, 0, 0, 0}
	};
	
	memset(inputfile,0x00,100);
	memset(keyfile,0x00,100);
	memset(outfile,0x00,100);	
	while ((opt = getopt_long(argc, argv, "hi:k:o:",
				   long_options, &option_index)) != -1) {

		switch (opt) {
		case 'i':
			strcpy(inputfile,optarg);
			break;
		case 'k':
			strcpy(keyfile,optarg);
			break;
		case 'o':
			strcpy(outfile,optarg);
			break;
		case 'h':
		case '?':
		default:
			sig_print_usage(argv[0]);
			exit(0);
		}
	}

	if(access(inputfile,F_OK) != 0)
	{
		printf("%s line %d,need input file!\n",
				__func__,__LINE__);
		exit(-1);
	}
	if(access(keyfile,F_OK) != 0)
	{
		printf("%s line %d,need key file!\n",
				__func__,__LINE__);
		exit(-1);
	}
	
	FILE *file;
	R_RSA_PUBLIC_KEY publicKey;
	R_RSA_PRIVATE_KEY privateKey;
	printf("\t*****************************ALI demo tool for RSA signature with its sample keypair**********************************************************\n");
	printf("\t\tWill sign file %s with ali sample key,digest algo is SHA256\n",inputfile);
	if((file = fopen (keyfile, "rb")) == NULL)
	{
		printf("\t\t%s line[%d]:error: Cannot open a file with that name.  Try again.\n",
			__func__,__LINE__);
		exit(-1);
	}

	if((fread(&publicKey, sizeof(publicKey), 1, file)) != 1) 
	{
		printf("\t\t%s line [%d]:error: Cannot Read Public Key from File.\n",__func__,__LINE__);
		exit(-1);
	} 
	else if((fread(&privateKey, sizeof(privateKey), 1, file)) != 1)
	{
		printf("\t\t%s line [%d]:error: Cannot Read Private Key from File.\n",
			__func__,__LINE__);
		exit(-1);
	}
	printf("\t\t[1]:Open ALi RSA key pair success.\n");
	FILE *filesign;
	if((filesign = fopen (inputfile, "rb")) == NULL)
	{
		printf("\t\t%s line [%d]:Open signed file Error.\n",
			__func__,__LINE__);
		exit(-1);
	}
	unsigned int file_size;
	fseek(filesign,0L,SEEK_END);
	file_size = ftell(filesign);
	fseek(filesign,0L,SEEK_SET);
	printf("\t\t[2]:Open signed file %s Success.size = %d.\n",inputfile,file_size);
	
	unsigned char *psignature = (unsigned char *)malloc(file_size + 0x0f);
	if((fread(psignature, file_size, 1, filesign)) != 1)
	{
		printf("\t\t%s line [%d]:error: Cannot Read data from File.\n",
			__func__,__LINE__);
		exit(-1);
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
	unsigned char real2sig[256];
	memset(real2sig,0x00,256);
	memcpy(real2sig,prefix_code,224);
	memcpy(real2sig + 224,h.sha256,32);
	rsaprivatefunc(signresult,&signlen,real2sig,256,&privateKey);
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
		exit(-1);
	}	
	
	FILE *merge_file;
	if ((merge_file = fopen (outfile, "wb+")) == NULL)
	{
		printf("\t\t%s line[%d]:Create Bootloader Failed!\n",__func__,__LINE__);
		exit(-1);
	}

	int output_len = ((file_size + 0x100)&(~0xff)) + 0x300;

	unsigned char *merge_all = malloc(output_len);
	memcpy(merge_all,psignature,file_size);

	memset(merge_all + file_size,0xff,output_len -file_size - 0x100 );

	memcpy(merge_all +output_len - 0x100,signresult,0x100);

	unsigned char *p = (unsigned char*)&file_size;
	merge_all[output_len - 0x200 + 0] = p[3];
	merge_all[output_len - 0x200 + 1] = p[2];
	merge_all[output_len - 0x200 + 2] = p[1];
	merge_all[output_len - 0x200 + 3] = p[0];

	if(fwrite(merge_all,1,output_len,merge_file) == output_len)
	{
		printf("\t\t[8]:Write signature to file ok len 0x%x!\n",file_size + 256);
	}
	else
	{
		printf("\t\t[8]:write output file failed!\n");
	}

  	printf("\t**********************************************************************************************************************************************\n");
	return 0;
}

