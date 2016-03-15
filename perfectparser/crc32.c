/**************************************************************************** 
***  ����  �� 
***        ��һ����ts����pat��pmt���crc32�� 
             �ڶ�����֤crc32�Ƿ���ȷ����֤ʱ����len��4����4���ֽڵ�crcд��crc32_table�ĺ��棬�õ�crcΪ0����crcΪ��ȷ�ġ� 
***  ��ע  : crc32_table�Ǹ���32λ��crc���ֵ�������vlc�Ŀ�Դ�������д��롣 
****************************************************************************/  
  
  
#include <stdio.h>  
#include <stdlib.h>  
#include <stdint.h>  
  
  
int MakeTable(uint32_t *crc32_table)  
{  
    for(uint32_t i = 0; i < 256; i++ ) {  
        uint32_t k = 0;  
        for(uint32_t j = (i << 24) | 0x800000; j != 0x80000000; j <<= 1 ) {  
            k = (k << 1) ^ (((k ^ j) & 0x80000000) ? 0x04c11db7 : 0);  
        }  
  
        crc32_table[i] = k;  
    }  
}  
uint32_t Crc32Calculate(uint8_t *buffer, uint32_t size, uint32_t *crc32_table)  
{  
    uint32_t crc32_reg = 0xFFFFFFFF;  
    for (uint32_t i = 0; i < size; i++) {  
        crc32_reg = (crc32_reg << 8 ) ^ crc32_table[((crc32_reg >> 24) ^ *buffer++) & 0xFF];  
    }  
    return crc32_reg;  
}  
  
int main()  
{  
    uint8_t header[] = {/* PMT */  
                                        /* PSI */  
                                        0x02, 0xb0, 0x17, 0x00, 0x01, 0xc1, 0x00, 0x00,  
                                        0xe1, 0x00,  
                                        0xf0, 0x00,  
                                         /* h264, pid=0x100=256 */  
                                        0x1b, 0xe1, 0x00, 0xf0, 0x00,  
                                         /* aac, pid=0x101=257 */  
                                        0x0f, 0xe1, 0x01, 0xf0, 0x00,  
                                        /* CRC */  
                                        0x2f, 0x44, 0xb9, 0x9b  
                                      };  
  
  
    uint32_t crc32Table[256] = {0};  
    MakeTable(crc32Table);  
  
  
    printf("crc is %0x\n",Crc32Calculate(header, sizeof(header) - 4, crc32Table));  
    printf("crc is %s\n", Crc32Calculate(header, sizeof(header), crc32Table) ? "false" : "true");  
  
  
    return 0;  
}  
