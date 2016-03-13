#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <getopt.h>
#include <sys/stat.h>


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
	char * op_name;
	int (* op_handler)(int argc,char **argv);
}asop_sets;

asop_sets handler_table[] = {
	{
		.op_name    = "code_built",
		.op_handler = cold_built_main,
	}, {
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
}
