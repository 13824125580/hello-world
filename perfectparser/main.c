#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>


#define MAX_SITABLE_LENGTH	(4096)

typedef void (*pfn_section_callback)(unsigned char*sectbuf, unsigned int length);

typedef struct tsc_section_chan
{
	unsigned short 		pid;
	unsigned char 		buf[MAX_SITABLE_LENGTH];
	unsigned int 		cur_pos;
	unsigned int 		total_table_length;
	unsigned char 		cc;
	unsigned int 		crc32_result;
	pfn_section_callback    sect_cb;
	
}tsc_sec_chan_param_t;

typedef struct dvb_section_feed
{
	unsigned char  secbuf_base[MAX_SITABLE_LENGTH + 188];
	unsigned short seclen; 
	unsigned short tsfeedp;		
	unsigned char  cc;
	unsigned char  pusi_seen;
	pfn_section_callback    sect_cb;
	
}dvb_section_feed_t;

static inline unsigned short section_length(const unsigned char *buf)
{
	return 3 + ((buf[1] & 0x0f) << 8) + buf[2];
}

static inline unsigned short ts_pid(const unsigned char *buf)
{
	return ((buf[1] & 0x1f) << 8) + buf[2];
}

static inline char ts_scramble_flag(const unsigned char *buf)
{
	return	((buf[3] & 0xc0) >> 6);
}

static inline char ts_check_error_indicator(const unsigned char *buf)
{
	return (buf[1] & 0x80);
}

static inline char ts_check_start_indicator(const unsigned char *buf)
{
	return ((buf[1] & 0x40) >> 6);
}

static inline char ts_get_cc(const unsigned char *buf)
{
	return (buf[3] & 0x0f);
}

static inline char ts_get_adapter_flag(const unsigned char *buf)
{
	return (buf[3] & 0x20);
}

static inline char ts_get_payload_flag(const unsigned char *buf)
{
	return (buf[3] & 0x10);
}

static inline unsigned char get_section_payload(const unsigned char *tsp, const unsigned char** payload, unsigned int *payload_length, unsigned char* pointer_field)
{
	unsigned char adapt_field_len;
	unsigned char *data_end;

	*pointer_field = 0;

	if (!(tsp[3] & 0x10))
		return 0;

	if (tsp[3] & 0x20) 
	{
		if (tsp[4] > 183)	
			return 0;
		else
		{
			adapt_field_len = tsp[4];
			if(tsp[1] & 0x40)
			{
				*pointer_field = tsp[4 + 1 + adapt_field_len];
				*payload = tsp + 4 + 1 + adapt_field_len + 1 + *pointer_field;
			}
			else
				*payload = tsp + adapt_field_len + 1;
		}
	}
	else
	{
		if(tsp[1] & 0x40)
		{
			*pointer_field = tsp[4];
			*payload = tsp + 4 + 1 + *pointer_field;
		}
		else
			*payload = tsp + 4;
	}

	if(*payload >= tsp + 188)
	{
		return 0;
	}
	
	*payload_length = tsp + 188 - *payload;
	if(*payload_length > 184)
	{
		*payload_length = 0;
		return 0;
	}

	return *payload_length;
}


void section_param_reset(tsc_sec_chan_param_t *sect)
{
	memset(sect->buf, 0x00, MAX_SITABLE_LENGTH);
	sect->cur_pos  		 = 0;
	sect->total_table_length = 0;
	sect->cc 	 	 = 0xff;
	sect->crc32_result   	 = 0xffffffff;
}

int parse_section(unsigned char *tsp, tsc_sec_chan_param_t *sect)
{
	const unsigned char* payload;
	unsigned int   payload_length;
	unsigned char  pointer_field;

	if((tsp == NULL) || (sect == NULL))
	{
		return -1;
	}
	
	if(ts_scramble_flag(tsp) || ts_check_error_indicator(tsp))
	{
		section_param_reset(sect);
		return -1;
	}

	if(((sect->cc + 1) & 0x0f) != ts_get_cc(tsp))
	{
		if(sect->cc == ts_get_cc(tsp))
		{
			if(ts_get_payload_flag(tsp))
			{
				section_param_reset(sect);
				return -1;
			}	
			else
				return 0;
		}
		else
		{
			if(!ts_check_start_indicator(tsp))
			{
				section_param_reset(sect);
				return -1;
			}
		}
	}
	
	sect->cc = ts_get_cc(tsp);

	if(get_section_payload(tsp, &payload, &payload_length, &pointer_field) == 0)
	{
		if(ts_get_payload_flag(tsp))
		{
			section_param_reset(sect);
			return -1;
		}
		
		return 0;
	}	

	do
	{
		if(sect->cur_pos == 0)
		{
			if(ts_check_start_indicator(tsp))
			{
				memcpy(sect->buf, payload, payload_length);
				sect->cur_pos = payload_length;
				payload_length = 0;
			}
			else
			{
				section_param_reset(sect);
				return -1;
			}
		}
		else
		{
			const unsigned char * addr;
			unsigned char len;
			unsigned short buf_avail;
			
			if(pointer_field)
			{
				addr = payload - pointer_field;
				len  = pointer_field;
				pointer_field = 0;
			}	
			else
			{
				addr = payload;
				len  = payload_length;
				payload_length = 0;
			}

			buf_avail = 4096 - sect->cur_pos;

			if(buf_avail > len)	
			{
				memcpy(sect->buf + sect->cur_pos, addr, len);
				sect->cur_pos += len;
			}
			else
			{
				if((sect->total_table_length != 0) &&
				   (sect->total_table_length > sect->cur_pos) &&
				   ((sect->total_table_length - sect->cur_pos) < buf_avail))
				{
					len = buf_avail;
					memcpy(sect->buf + sect->cur_pos, addr, len);
					sect->cur_pos += len;
					
				}
				else
				{
					section_param_reset(sect);
					if(payload_length)
					{
						continue;
					}
					
					return -1;
				}

			}
	
		}
retry:

		if((sect->total_table_length == 0) && (sect->cur_pos > 2))
		{
			sect->total_table_length =  section_length(sect->buf);
		}
		
		if(sect->total_table_length != 0)
		{
			if(sect->cur_pos >= sect->total_table_length)
			{
				if(sect->sect_cb)
				{
					sect->sect_cb(sect->buf, sect->total_table_length);
				}

				sect->cur_pos = sect->cur_pos - sect->total_table_length;
				
				if(sect->cur_pos && (sect->buf[sect->total_table_length] != 0xff))
				{
					memcpy(sect->buf, sect->buf + sect->total_table_length, sect->cur_pos);
					sect->total_table_length = 0;
					sect->crc32_result = 0xffffffff;
					goto retry;
				}
				
				section_param_reset(sect);
			}

		}	
			
	}while(payload_length);

	
	return 0;	
}

static unsigned int crc32_compute(unsigned int initVector, unsigned char* pData, unsigned int dataLen)
{
    static const unsigned int crc32Table[] = 
    {
        0x00000000, 0x04c11db7, 0x09823b6e, 0x0d4326d9, 0x130476dc, 0x17c56b6b, 0x1a864db2, 0x1e475005,
        0x2608edb8, 0x22c9f00f, 0x2f8ad6d6, 0x2b4bcb61, 0x350c9b64, 0x31cd86d3, 0x3c8ea00a, 0x384fbdbd,
        0x4c11db70, 0x48d0c6c7, 0x4593e01e, 0x4152fda9, 0x5f15adac, 0x5bd4b01b, 0x569796c2, 0x52568b75,
        0x6a1936c8, 0x6ed82b7f, 0x639b0da6, 0x675a1011, 0x791d4014, 0x7ddc5da3, 0x709f7b7a, 0x745e66cd,
        0x9823b6e0, 0x9ce2ab57, 0x91a18d8e, 0x95609039, 0x8b27c03c, 0x8fe6dd8b, 0x82a5fb52, 0x8664e6e5,
        0xbe2b5b58, 0xbaea46ef, 0xb7a96036, 0xb3687d81, 0xad2f2d84, 0xa9ee3033, 0xa4ad16ea, 0xa06c0b5d,
        0xd4326d90, 0xd0f37027, 0xddb056fe, 0xd9714b49, 0xc7361b4c, 0xc3f706fb, 0xceb42022, 0xca753d95,
        0xf23a8028, 0xf6fb9d9f, 0xfbb8bb46, 0xff79a6f1, 0xe13ef6f4, 0xe5ffeb43, 0xe8bccd9a, 0xec7dd02d,
        0x34867077, 0x30476dc0, 0x3d044b19, 0x39c556ae, 0x278206ab, 0x23431b1c, 0x2e003dc5, 0x2ac12072,
        0x128e9dcf, 0x164f8078, 0x1b0ca6a1, 0x1fcdbb16, 0x018aeb13, 0x054bf6a4, 0x0808d07d, 0x0cc9cdca,
        0x7897ab07, 0x7c56b6b0, 0x71159069, 0x75d48dde, 0x6b93dddb, 0x6f52c06c, 0x6211e6b5, 0x66d0fb02,
        0x5e9f46bf, 0x5a5e5b08, 0x571d7dd1, 0x53dc6066, 0x4d9b3063, 0x495a2dd4, 0x44190b0d, 0x40d816ba,
        0xaca5c697, 0xa864db20, 0xa527fdf9, 0xa1e6e04e, 0xbfa1b04b, 0xbb60adfc, 0xb6238b25, 0xb2e29692,
        0x8aad2b2f, 0x8e6c3698, 0x832f1041, 0x87ee0df6, 0x99a95df3, 0x9d684044, 0x902b669d, 0x94ea7b2a,
        0xe0b41de7, 0xe4750050, 0xe9362689, 0xedf73b3e, 0xf3b06b3b, 0xf771768c, 0xfa325055, 0xfef34de2,
        0xc6bcf05f, 0xc27dede8, 0xcf3ecb31, 0xcbffd686, 0xd5b88683, 0xd1799b34, 0xdc3abded, 0xd8fba05a,
        0x690ce0ee, 0x6dcdfd59, 0x608edb80, 0x644fc637, 0x7a089632, 0x7ec98b85, 0x738aad5c, 0x774bb0eb,
        0x4f040d56, 0x4bc510e1, 0x46863638, 0x42472b8f, 0x5c007b8a, 0x58c1663d, 0x558240e4, 0x51435d53,
        0x251d3b9e, 0x21dc2629,	0x2c9f00f0, 0x285e1d47, 0x36194d42, 0x32d850f5, 0x3f9b762c, 0x3b5a6b9b,
        0x0315d626, 0x07d4cb91, 0x0a97ed48, 0x0e56f0ff, 0x1011a0fa, 0x14d0bd4d, 0x19939b94, 0x1d528623,
        0xf12f560e, 0xf5ee4bb9, 0xf8ad6d60, 0xfc6c70d7, 0xe22b20d2, 0xe6ea3d65, 0xeba91bbc, 0xef68060b,
        0xd727bbb6, 0xd3e6a601, 0xdea580d8, 0xda649d6f, 0xc423cd6a, 0xc0e2d0dd, 0xcda1f604, 0xc960ebb3,
        0xbd3e8d7e, 0xb9ff90c9, 0xb4bcb610, 0xb07daba7, 0xae3afba2, 0xaafbe615, 0xa7b8c0cc, 0xa379dd7b,
        0x9b3660c6, 0x9ff77d71, 0x92b45ba8, 0x9675461f, 0x8832161a, 0x8cf30bad, 0x81b02d74, 0x857130c3,
        0x5d8a9099, 0x594b8d2e, 0x5408abf7, 0x50c9b640, 0x4e8ee645, 0x4a4ffbf2, 0x470cdd2b, 0x43cdc09c,
        0x7b827d21, 0x7f436096, 0x7200464f, 0x76c15bf8, 0x68860bfd, 0x6c47164a, 0x61043093, 0x65c52d24,
        0x119b4be9, 0x155a565e, 0x18197087, 0x1cd86d30, 0x029f3d35, 0x065e2082, 0x0b1d065b, 0x0fdc1bec,
        0x3793a651, 0x3352bbe6, 0x3e119d3f, 0x3ad08088, 0x2497d08d, 0x2056cd3a, 0x2d15ebe3, 0x29d4f654,
        0xc5a92679, 0xc1683bce, 0xcc2b1d17, 0xc8ea00a0, 0xd6ad50a5, 0xd26c4d12, 0xdf2f6bcb, 0xdbee767c,
        0xe3a1cbc1, 0xe760d676, 0xea23f0af, 0xeee2ed18, 0xf0a5bd1d, 0xf464a0aa, 0xf9278673, 0xfde69bc4,
        0x89b8fd09, 0x8d79e0be, 0x803ac667, 0x84fbdbd0, 0x9abc8bd5, 0x9e7d9662, 0x933eb0bb, 0x97ffad0c,
        0xafb010b1, 0xab710d06, 0xa6322bdf, 0xa2f33668, 0xbcb4666d, 0xb8757bda, 0xb5365d03, 0xb1f740b4
    };
	
    unsigned int   i;
    unsigned int   j;
    unsigned int   crc;
    
    crc = initVector;

    for (j = 0; j < dataLen;  j++)
    {
	i	= ((crc >> 24) ^ *pData++) & 0xff;
	crc	= (crc << 8) ^ crc32Table[i];
    }
    return crc;
}

int make_crc32_table(uint32_t *crc32_table)  
{  
    for(uint32_t i = 0; i < 256; i++ ) {  
        uint32_t k = 0;  
        for(uint32_t j = (i << 24) | 0x800000; j != 0x80000000; j <<= 1 ) {  
            k = (k << 1) ^ (((k ^ j) & 0x80000000) ? 0x04c11db7 : 0);  
        }  
  
        crc32_table[i] = k;  
    }  
}  

uint32_t crc32calculate(uint8_t *buffer, uint32_t size, uint32_t *crc32_table)  
{  
    uint32_t crc32_reg = 0xFFFFFFFF;  
    for (uint32_t i = 0; i < size; i++) {  
        crc32_reg = (crc32_reg << 8 ) ^ crc32_table[((crc32_reg >> 24) ^ *buffer++) & 0xFF];  
    }  
    return crc32_reg;  
}  

static unsigned int gen_crc32_table[256];
static unsigned int total_section_number;
static void section_callback(unsigned char *section, unsigned int length)
{
	printf("%s line %d, section[0] = 0x%02x, section[1] = 0x%02x, section[2] = 0x%02x, section[3] = 0x%02x. length = %4d. crcresult 0x%08x. crcano 0x%08x.sectino: %5d.\n", __func__, __LINE__, \
		section[0], section[1], section[2], section[3], length, crc32_compute(0xffffffff, section, length), crc32calculate(section, length, gen_crc32_table), total_section_number ++);

	return;
}


static inline unsigned char payload(const unsigned char *tsp)
{
	if (!(tsp[3] & 0x10))
		return 0;

	if (tsp[3] & 0x20) 
	{
		if (tsp[4] > 183)	
			return 0;
		else
			return 184 - 1 - tsp[4];
	}

	return 184;
}


static void dvb_dmx_section_new(dvb_section_feed_t* feed)
{
	feed->tsfeedp = feed->seclen = 0;
}
int parse_feed_section(const unsigned char *tsp, dvb_section_feed_t *feed)
{
	unsigned char p;
	unsigned char count;
	unsigned char cc;
	int ccok;
	int dc_i = 0;
		
	if((tsp == NULL) || (feed == NULL))
	{
		return -1;
	}
	
	if(ts_scramble_flag(tsp) || ts_check_error_indicator(tsp))
	{
		dvb_dmx_section_new(feed);
		return -1;
	}

	count = payload(tsp);

	if(count == 0)
	{
		return -1;
	}	
	
	p = 188 - count;
	cc = tsp[3] & 0x0f;
	ccok = (((feed->cc + 1) & 0x0f) == cc);
	feed->cc = cc;

	if (tsp[3] & 0x20) 
	{
		if ((tsp[4] > 0) && (tsp[5] & 0x80))
		{
			dc_i = 1;
		}
	}

	if (!ccok || dc_i) 
	{
		feed->pusi_seen = 0;
		dvb_dmx_section_new(feed);
	}


	if(tsp[1] & 0x40)
	{
		if(count > 1 && tsp[p] < count)
		{
			const unsigned char *before = &tsp[p + 1];
			unsigned char before_len = tsp[p];
			const unsigned char *after = &before[before_len];
			unsigned char after_len = count - 1 - before_len;
			
			memcpy(feed->secbuf_base + feed->tsfeedp, before, before_len);
			feed->tsfeedp += before_len;
			
			if(feed->tsfeedp > 2)
			{
				feed->seclen = section_length(feed->secbuf_base);
				if(feed->tsfeedp >= feed->seclen)
				{
					feed->sect_cb(feed->secbuf_base, feed->seclen);
				}
			}
			
			feed->pusi_seen = 1;
			
			dvb_dmx_section_new(feed);

			memcpy(feed->secbuf_base + feed->tsfeedp, after, after_len);
			feed->tsfeedp += after_len;
		}
		else if(count > 0)
			printf("%s line %d, lost %d bytes.\n", __func__, __LINE__, count);
	}
	else
	{
		if(feed->pusi_seen == 1)
		{
			memcpy(feed->secbuf_base + feed->tsfeedp, &tsp[p], count);
			feed->tsfeedp += count;
		}
		else
		{
			dvb_dmx_section_new(feed);
		}
		
	}

#if 1
	if(feed->tsfeedp > 2)
	{
		feed->seclen = section_length(feed->secbuf_base);
		if(feed->tsfeedp >= feed->seclen)
		{
			int sect_len = feed->seclen;
			feed->sect_cb(feed->secbuf_base, sect_len);
			
			if(feed->secbuf_base[sect_len] != 0xff)
			{
				feed->tsfeedp -= sect_len;
				memcpy(feed->secbuf_base, feed->secbuf_base + sect_len, feed->tsfeedp);
			}
			else 	//not valid tableid, restart.
				dvb_dmx_section_new(feed);
		}
	}
#endif
	return 0;
}

static tsc_sec_chan_param_t section;
static dvb_section_feed_t feed;
int main(void)
{
	FILE* tsfile;
	unsigned char buf[188];
	unsigned int size;
	int j;

	make_crc32_table(gen_crc32_table);
	memset(buf, 0x00, 188);	
	memset(&section, 0x00, sizeof(tsc_sec_chan_param_t));
	section_param_reset(&section);
        section.sect_cb = section_callback;	

	memset(&feed, 0x00, sizeof(dvb_section_feed_t));
	dvb_dmx_section_new(&feed);
	feed.sect_cb = section_callback;
	feed.cc = 0xff;
	
	tsfile = fopen("eit.ts", "rb");
	//tsfile = fopen("shenzhen-562-1G.ts", "rb");
	if(tsfile == NULL)
	{
		printf("%s line %d, tsfile = %p.\n", __func__, __LINE__, tsfile);
		return -1;
	}	

	fseek(tsfile, 0, SEEK_END);
        size = ftell(tsfile);
        printf("size = %d.\n", size);
	fseek(tsfile, 0, SEEK_SET);

        for(j = 0; j < size; j += 188)
        {
		int ret =  fread(buf, 188, 1, tsfile);
	   	if(ret != 1)
	   	{
	   		printf("%s line %d, ret = %d.\n", __func__, __LINE__, ret);
			continue;
	   	}
		if(ts_pid(buf) == 0x12)
	    	{
			//parse_section(buf, &section);
			parse_feed_section(buf, &feed);
	    	}
	}
	return 0;
}
