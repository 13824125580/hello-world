#include <stdio.h>
#include <stdlib.h>
#include "dvb.h"

int decrambling_process(void)
{
    FILE *src;
    FILE *dst;
    FILE *log;

    unsigned char src_ts[188];
    unsigned char dst_ts[184];
    int temp;
    unsigned int count = 0;
    unsigned int i = 0;
    unsigned char af_length = 0;

#if 1
    #define CSA_MODE   1
    byte_t key[8] = {0x01,0x23,0x45,0x67,0x89,0xab,0xcd,0xef};
    src = fopen("CSA_V2_Scrbd.ts","rb");
    dst = fopen("clear.ts","wab");
    log = fopen("log.txt","w+");
#endif


#if 0
    #define CSA_MODE   0
    byte_t key[8] = {0x78,0x46,0x00,0xbe,0xca,0x7c,0x00,0x46};
    src = fopen("Test_data\\single2-enc.ts","rb");
    dst = fopen("Test_data\\single2-clear.ts","wab");
    log = fopen("Test_data\\log.txt","wt");
#endif


#if 0
    #define CSA_MODE   0
    byte_t key[8] = {0x11,0x11,0x11,0x33,0x11,0x11,0x11,0x33};
    src = fopen("Test_data\\cctv11_fix0x488.trp","rb");
    dst = fopen("Test_data\\cctv11_fix0x488.ts","wab");
    log = fopen("Test_data\\log.txt","wt");
#endif

#if 0
    #define CSA_MODE   0
    byte_t key[8] = {0x22,0x22,0x22,0x66,0x22,0x22,0x22,0x66};
    src = fopen("Test_data\\cctv12_fix0x4ec.trp","rb");
    dst = fopen("Test_data\\cctv12_fix0x4ec.ts","wab");
    log = fopen("Test_data\\log.txt","wt");
#endif


    if(src == NULL)
        printf("open src file fail!!\n");
    else
        printf("open src file success!!\n");
    if(dst == NULL)
        printf("open dst file fail!!\n");
    else
        printf("open dst file success!!\n");

    while(1)
    {
        for(i=0;i<188;i++)
        {
            temp = getc(src);
            if(temp == EOF)
                return 0;
            src_ts[i] = (unsigned char)temp;

        }
        fseek(src,0,SEEK_CUR);
#if 1
        if((src_ts[3]&0xC0)&&((src_ts[3]&0x30)==0x10))
        {
            src_ts[3] &= ~(0xC0);
            fwrite(src_ts,4,1,dst);
            csa_main (key, src_ts+4, dst_ts, 184, CSA_MODE,log);
            fwrite(dst_ts,184,1,dst);
        }
        else if((src_ts[3]&0xC0)&&((src_ts[3]&0x30)==0x30))
        {
            src_ts[3] &= ~(0xC0);
            af_length = src_ts[4]+1;
            fwrite(src_ts,4+af_length,1,dst);
            csa_main (key, src_ts+4+af_length, dst_ts, 184-af_length, CSA_MODE,log);
            fwrite(dst_ts,184-af_length,1,dst);
        }
        else
        {
            fwrite(src_ts,188,1,dst);
        }
#else

        if(src_ts[3]&0xC0)
        {
            src_ts[3] &= ~(0xC0);
            fwrite(src_ts,4,1,dst);
            csa_main (key, src_ts+4, dst_ts, 184, CSA_MODE,log);
            fwrite(dst_ts,184,1,dst);
        }
        else
        {
            fwrite(src_ts,188,1,dst);
        }
#endif

        count++;
        if(count==1)
            printf("descrambling.\r");
        else if(count==500)
            printf("descrambling..\r");
        else if(count==1000)
            printf("descrambling...\r");
        else if(count==1500)
            printf("descrambling....\r");
        else if(count==2000)
            printf("descrambling.....\r");
        else if(count==2500)
        {
            printf("descrambling      \r");
            count = 0;
        }
    }
}


int main()
{
    int ret = 0;

    ret = decrambling_process();
    if(!ret)
        printf("Descrambling Finish!!\n");

    //ret = csa_descrambler_test();
    //if(ret)
    //    printf("csa test pass!!\n");
    //else
    //    printf("csa test fail!!\n");
    return 0;
}
