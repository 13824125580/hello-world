#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <getopt.h>
#include <sys/stat.h>
#include <inttypes.h>
#include <fcntl.h>
#include "rsaeuro.h"
#include "sha1.h"
#include "sha256.h"
#include "sha384.h"
#include "sha512.h"

static unsigned char *mp_packet;
static char ram_base_str[14] = "__RAM_BASE = ";
static char start_str[17] = ".rodata         ";
static char end_str[25] = "                _end = .";

static void cb_print_usage(char *prog)
{
	printf("Usage: %s -h help\n"
                    " This program used to encrypt .rodata and .data sections of ELF file according .map:\n"
                    "   -code <code has been processed by objcopy with binary options.>\n"
                    "   -map <map must be sure the same make process with the code outfile.>\n"
                    "   -out <the code binary output>\n", prog);

}

int cold_built_main(int argc,char **argv)
{
	char opt;
	char mapfile[100];
	char codefile[100];
	char outfile[100];
	int option_index;

	static struct option long_options[] = {
		{ "help",        no_argument,       0, 'h' },
		{ "code",  required_argument,  0, 'c' },
		{ "map",       required_argument, 0, 'm' },
		{ "out", required_argument, 0, 'o' },
		{ 0, 0, 0, 0}
	};
	
	memset(mapfile,0x00,100);
	memset(codefile,0x00,100);
	memset(outfile,0x00,100);	
	while ((opt = getopt_long(argc, argv, "hc:m:o:",
				   long_options, &option_index)) != -1) {

		switch (opt) {
		case 'c':
			strcpy(codefile,optarg);
			break;
		case 'm':
			strcpy(mapfile,optarg);
			break;
		case 'o':
			strcpy(outfile,optarg);
			break;
		case 'h':
		case '?':
		default:
			cb_print_usage(argv[0]);
			exit(0);

		}
	}
	

	printf("\t=================================================================\n");
	printf("\t\tAli tools for ecrypt .rodata and .data segment\n");

	if(access(mapfile,F_OK) != 0)
	{
		printf("%s line %d,need map file!\n",
				__func__,__LINE__);
		exit(-1);
	}
	if(access(codefile,F_OK) != 0)
	{
		printf("%s line %d,need rawbin file!\n",
				__func__,__LINE__);
		exit(-1);
	}
	
	FILE* mp_file = fopen(mapfile,"rb");

	if (!mp_file )
	{
		printf("%s: line %d,Open Map file failed!\n",__func__,__LINE__);
		exit(-1);
	}
	
	fseek(mp_file,0L,SEEK_END);
	unsigned int mp_size = ftell(mp_file);
	mp_packet = calloc(mp_size,sizeof(unsigned char));
	
	fseek(mp_file,0L,SEEK_SET);
	int ret;
	if((ret = fread(mp_packet, mp_size, 1, mp_file)) != 1) 
	{
		printf("%s: line %d,Read map file bytes not equal to Actual file size!ret = %d\n",
			__func__,__LINE__,ret);
		exit(-1);
	}
	
	fclose (mp_file); mp_file = NULL;
	printf("\tRead Map file %s successful:\n\t\tMap file size = %d\n", argv[1],mp_size);
	
	int i = 0;
	int j = 0;
	int find_boot = 0;
	int find_start = 0;
	int find_end = 0;
	char temp_str1[9];
	char temp_str2[9];
	char temp_str3[9];
	memset(temp_str1,0x00,9);
	memset(temp_str2,0x00,9);
	memset(temp_str3,0x00,9);
	unsigned int boot = 0;
	unsigned int ro_start = 0;
	unsigned int code_end = 0;
	char *pboot_start = strstr(mp_packet,ram_base_str);
	if(pboot_start)
		memcpy(temp_str1,pboot_start + 15,8);
	else
	{
		printf("%s line %d, cant find the bootstart address!\n",
				__func__,__LINE__);
		exit(-1);
	}
	
	char *prodat_start = strstr(mp_packet,start_str);
	if(prodat_start)
		memcpy(temp_str2,prodat_start + 26,8);
	else
	{
		printf("%s line %d, cant find the rodata start address!\n",
				__func__,__LINE__);
		exit(-1);
	}

	char * pdata_end = strstr(mp_packet,end_str);
	if(pdata_end)
		memcpy(temp_str3,pdata_end - 8,8);
	else
	{
		printf("%s line %d, cant find the dataend address!\n",
				__func__,__LINE__);
		exit(-1);	
	}

	sscanf(temp_str1, "%x", &boot);
	sscanf(temp_str2, "%x", &ro_start);
	sscanf(temp_str3, "%x", &code_end);
	printf("\tParsing Address successful:\n\t\tboot=0x%08x, ro_start=0x%08x, code_end=0x%08x\n", boot, ro_start, code_end);

	free(mp_packet);mp_packet = NULL;
	FILE* bin_file = fopen(codefile,"rb");
	
	if(!bin_file)
	{
		printf("%s: line %d,Cant Open bootloader bin file!\n",
			__func__,__LINE__);
		exit(-1);
	}

	fseek(bin_file,0L,SEEK_END);
	unsigned int bin_size = ftell(bin_file);
	mp_packet = calloc(bin_size,sizeof(unsigned char));
	

	fseek(bin_file,0L,SEEK_SET);
	if((fread(mp_packet, bin_size, 1, bin_file)) != 1) 
	{
		printf("%s: line %d,Read bin file bytes not equal to Actual file size!\n",
			__func__,__LINE__);
		exit(-1);
	}

	fclose(bin_file);bin_file = NULL;
	printf("\tRead Bin fine %s Successful:\n\t\tsize = %d\n",argv[2],bin_size);

	for(i = ro_start-boot;i < bin_size;i ++)		//inverse every bits of data and rodta sections.
	{
		mp_packet[i] = ~mp_packet[i];
	}

	bin_file = fopen(outfile,"wb+");
	
	if (!bin_file)
	{
		printf("%s: line %d Open output bin file failed!\n",
			__func__,__LINE__);
		exit(-1);
	}

	fseek(bin_file,0L,SEEK_SET);
	
	unsigned int act_write = fwrite(mp_packet,bin_size,1,bin_file);

	if (act_write != 1)
	{
		printf("%s: line %d,Write Bin bytes not equal to the actual file size!act_write = %d\n",
			__func__,__LINE__,act_write);
		exit(-1);
	}
	
	free(mp_packet);mp_packet = NULL;
	fclose(bin_file);
	printf("\t=================================================================\n");	
	return 0;
}


typedef struct
{
	unsigned int id;
	unsigned int len;
	unsigned int offset;
	unsigned int crc;
	unsigned char name[16];
	unsigned char version[16];
	unsigned char time[16];
	unsigned char reserved[64];
	char filepath[256];
	unsigned short cstmid;
	int	ver_check;
	
}chun_hdr;

static void va_print_usage(char *prog)
{
	printf("Usage: %s -h help\n"
                    " This program used to append the version info to the tail of the input binary file according script:\n"
                    "   -script <script file,including the version info.>\n"
                    "   -type process type info\n"
                    "            allcode:process main and see all.\n"
                    "            maincode:only process main.\n"
                    "            seecode:only process see\n", prog);

}


chun_hdr max_hdr[20];
int version_appender_main(int argc, char **argv)
{
#define MAX_LINE	256
	char scrfile[100];
	char type[10];
	char line[MAX_LINE];
	int option_index;
	int opt;
	char *iter;
	int hdr_indx = 0;
	chun_hdr *phdr = NULL;
	static char outputfile[60];
	int outfilestage = 0;
	
	
	static struct option long_options[] = {
		{ "help",        no_argument,       0, 'h' },
		{ "script",  required_argument,  0, 's' },
		{ "type", required_argument, 0, 't' },
		{ 0, 0, 0, 0}
	};
		
	memset(scrfile,0x00,100);
	memset(type,0x00,10);
	while ((opt = getopt_long(argc, argv, "hs:i:o:t:",
				   long_options, &option_index)) != -1) {

		switch (opt) {
		case 's':
			strcpy(scrfile,optarg);
			break;
		case 't':
			strcpy(type,optarg);
			break;
		case 'h':
		case '?':
		default:
			va_print_usage(argv[0]);
			exit(0);

		}
	}
	printf("scrifile = %s, type = %s\n",
		scrfile,type);
	
	if(access(scrfile,F_OK) != 0)
	{
		printf("%s line %d,the script %s is not exist!\n",
				__func__,__LINE__,scrfile);
		exit(-1);
	}

	FILE * sfile_hdl = NULL;
	if(!(sfile_hdl = fopen(scrfile, "r")))
	{
		printf("%s line %d,open %s failed,please check!\n",
				__func__,__LINE__,scrfile);
		exit(-1);
	}
	char tmpstr[MAX_LINE];
	int i,j = 0;
	while (fgets(line, MAX_LINE, sfile_hdl)) 
	{
		if ((iter = strchr(line, '\n')) == NULL)
		{
			printf("%s line %d, script file format error!\n",
					__func__,__LINE__);
			exit(-1);
		}
		*iter = '\0';
		if(*(iter - 1) == '\r')
			*(iter - 1) = '\0';

		memset(tmpstr,0x00,MAX_LINE);
		for(i = 0,j = 0; i < strlen(line); i ++)
		{
			if((line[i] == ' ') || (line[i] =='\t'))
				continue;
			tmpstr[j++] = line[i];
			
		}
		if((tmpstr[0] == ';')||strlen(tmpstr) == 0)
			continue;
		
		//printf("%s\n",tmpstr);

		if(strcmp(tmpstr,"[File]") == 0)
		{
			phdr = &max_hdr[hdr_indx ++];
			continue;
		}
		if(strcmp(tmpstr,"[OutFile]") == 0)
		{
			memset(outputfile,0x00,60);
			outfilestage = 1;
			continue;
		}
 
		if(hdr_indx && phdr)
		{
			if ((iter = strchr(tmpstr, '=')) == NULL)
			{
				printf("%s line %d,Bad format of script,command = value!\n",
					__func__,__LINE__);
				exit(-1);
			}
			*iter = '\0';
			if(strcmp("id",tmpstr) == 0)
			{
				sscanf(iter + 1,"0x%08x",&phdr->id);
				printf("chunk %d,phdr - >id = 0x%08x\n",hdr_indx - 1,phdr->id);
			}
			if(strcmp("offset",tmpstr) == 0)
			{
				sscanf(iter + 1,"0x%08x",&phdr->offset);
				printf("chunk %d,phdr -> offset = 0x%08x\n",hdr_indx - 1,phdr->offset);
			}
			if(strcmp("file",tmpstr) == 0)
			{
				sscanf(iter + 1,"%s",phdr->filepath);
				printf("chunk %d,phdr->filepath = %s\n",hdr_indx -1,phdr->filepath);
			}
			if(strcmp("name",tmpstr) == 0)
			{
				sscanf(iter + 1,"%s",phdr->name);
				printf("chunk %d,phdr->name = %s\n",hdr_indx -1,phdr->name);
			}
			if(strcmp("CSTMID",tmpstr) == 0)
			{
				sscanf(iter + 1,"0x%hx",&phdr->cstmid);
				printf("chunk %d,phdr->cstmid = 0x%08x\n",hdr_indx -1,phdr->cstmid);
			}
			if(strcmp("VERSION_CHECK",tmpstr) == 0)
			{
				if(*(iter + 1) == 'Y')
					phdr->ver_check = 1;
				else 
					phdr->ver_check = 0;
				printf("chunk %d,phdr->ver_check = %d\n",hdr_indx -1,phdr->ver_check);
			}
			if(strcmp("ver",tmpstr) == 0)
			{
				sscanf(iter + 1,"%s",phdr->version);
				printf("chunk %d,phdr->version = %s\n",hdr_indx -1,phdr->version);
			}
			if(strcmp("time",tmpstr) == 0)
			{
				sscanf(iter + 1,"%s",phdr->time);
				printf("chunk %d,phdr->time = %s\n",hdr_indx -1,phdr->time);
			}
			if(strcmp("NCRC",tmpstr) == 0)
			{
				char tmp[10];
				memset(tmp,0x00,10);
				sscanf(iter + 1,"%s",tmp);
				if(strcmp(tmp,"\"NCRC\"") == 0)
					phdr->crc = 0;
				else
					phdr->crc = 1;
				printf("chunk %d,phdr->crc = %d,tmp = %s\n",hdr_indx - 1,phdr->crc,tmp);
			}
			if(strcmp("len",tmpstr) == 0)
			{
				sscanf(iter + 1,"0x%08x",&phdr->len);
				printf("chunk %d,phdr -> len = 0x%08x\n",hdr_indx - 1,phdr->len);
			}
			 if(strcmp("out",tmpstr) == 0)
			{
				sscanf(iter + 1,"%s",outputfile);
				printf("chunk %d,outputfile %s\n",hdr_indx - 1,outputfile);
			}
		}	
	}

	int loop = 0;
	for(loop = 0; loop < hdr_indx; loop ++)
	{
		if((max_hdr[loop].id == 0x01FE0101)||(max_hdr[loop].id == 0x0AF50100))
		{
			FILE *fmain = fopen(max_hdr[loop].filepath,"ab+");
			if(!fmain)
			{
				printf("%s line %d,open %s failed,please check!\n",
					__func__,__LINE__,max_hdr[loop].name);
				exit(-1);
			}
			char tailbytes[16];
			memset(tailbytes,0x00,16);
			memcpy(tailbytes,max_hdr[loop].version + 1,8);
			int ret = fwrite(tailbytes,16,1,fmain);
			if(ret != 1)
			{
				printf("%s line %d, write file failed!\n",
					__func__,__LINE__);
			}
			fclose(fmain);
		}
	}
}


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
                    " This program used to sign a file use giving rsa key file:\n"
                    "   -input <file for sigh>\n"
                    "   -key <rsa key file>\n"
                    "   -out <the outputfile including signature>\n", prog);

}


R_RSA_PUBLIC_KEY PUBLIC_KEY2;
R_RSA_PRIVATE_KEY PRIVATE_KEY2;
int R_GeneratePEMKeys(R_RSA_PUBLIC_KEY *publicKey, R_RSA_PRIVATE_KEY * privateKey, R_RSA_PROTO_KEY *protoKey, R_RANDOM_STRUCT *randomStruct);
static void gen_rsa_routine(char *filename)

{
	static R_RANDOM_STRUCT randomStruct;
	static R_RSA_PROTO_KEY protoKey;
	static R_RSA_PRIVATE_KEY *privateKey;
	static R_RSA_PUBLIC_KEY *publicKey;
	unsigned int bytesNeeded;
	unsigned char seedWord = 1;
	
	R_RandomInit(&randomStruct);
	while (1) {
			R_GetRandomBytesNeeded(&bytesNeeded, &randomStruct);
			if(bytesNeeded == 0)
				break;
			R_RandomUpdate(&randomStruct, &seedWord, 4);//4);
		}
		
		protoKey.bits = 2048;

		protoKey.useFermat4 = 1;
		int status;
		status = R_GeneratePEMKeys(&PUBLIC_KEY2, &PRIVATE_KEY2, &protoKey, &randomStruct);
		if(status) {
			printf("Key Generation error\n");
			exit(0);
		}	
		
		FILE* outfile = NULL;
		if ((outfile = fopen (filename, "wb")) == NULL)
		{    
			printf("Cannot open outfile\n");
			exit(0);
		}

		if((fwrite(&PUBLIC_KEY2, sizeof(PUBLIC_KEY2), 1, outfile)) != 1) {
			printf("ERROR: Cannot Write Public Key to File.\n");
		} else {
			if((fwrite(&PRIVATE_KEY2, sizeof(PRIVATE_KEY2), 1, outfile)) != 1)
				printf("ERROR: Cannot Write Private Key to File.\n");
		}

		fclose(outfile);
}
int redemo_main(int argc, char **argv)
{
	char opt;
	char inputfile[100];
	char keyfile[100];
	char outfile[100];
	char gen_rsa_file[100];
	int gen_rsa = 0;
	int option_index;

	static struct option long_options[] = {
		{ "help",        no_argument,       0, 'h' },
		{ "input",  required_argument,  0, 'i' },
		{ "key",       required_argument, 0, 'k' },
		{ "out", required_argument, 0, 'o' },
		{ "genrsa", required_argument, 0, 'g' },
		{ 0, 0, 0, 0}
	};
	
	memset(inputfile,0x00,100);
	memset(keyfile,0x00,100);
	memset(outfile,0x00,100);	
	memset(gen_rsa_file,0x00,100);
	while ((opt = getopt_long(argc, argv, "hi:k:o:g:",
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
		case 'g':
			strcpy(gen_rsa_file,optarg);
			gen_rsa = 1;
			break;
		case 'h':
		case '?':
		default:
			sig_print_usage(argv[0]);
			exit(0);
		}
	}

	if(gen_rsa == 1)
	{
		gen_rsa_routine(gen_rsa_file);
		return 0;
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

	int output_len = ((file_size + 255)&(~0xff)) + 0x300;

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

typedef struct
{
	char * op_name;
	int (* op_handler)(int argc,char **argv);
}asop_sets;

asop_sets handler_table[] = {
	{
		.op_name    = "code_built",
		.op_handler = cold_built_main,
	}, {
		.op_name    = "version_appender",
		.op_handler = version_appender_main,
	},{
		.op_name    = "redemo",
		.op_handler = redemo_main,
	},{
		.op_name    = NULL,
		.op_handler = NULL,
	}
};

int main(int argc, char **argv)
{
	int iter = 0;

	for(iter = 0; handler_table[iter].op_name;iter ++)
	{
		if(!strcmp(argv[0], handler_table[iter].op_name))
			handler_table[iter].op_handler(argc,argv);
	}
	return 0;
}

