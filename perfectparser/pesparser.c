#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>

#define PES_BUF_SIZE		(50 * 1024 * 1024)

typedef int (*pfunc_pes_request_buffer)(void *cookie, unsigned int req_size, void ** retbuf, unsigned int* retbuf_size);
typedef int (*pfunc_pes_update_buffer)(void *cookie, unsigned int size);

typedef struct pespkt_feed_structure
{
	void* 					buf;
	unsigned int 			peshdr_seen;
	unsigned int 			req_buf_len;
	unsigned int 			req_buf_pos;
	unsigned char 			cc;
	unsigned int 			discon_counter;
	pfunc_pes_request_buffer	req_buf_cb;
	pfunc_pes_update_buffer		upd_buf_cb;
}pes_feed_param_t;



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

static int pes_payload(const unsigned char* tsp, const unsigned char** payload, unsigned int *payload_len)
{
	unsigned int adapt_length;

	if(ts_get_payload_flag(tsp))	
	{
		if(!ts_get_adapter_flag(tsp))  
		{
			*payload = tsp + 4;	
		}
		else
		{
			adapt_length = tsp[4];
			*payload = tsp + 4 + 1 + adapt_length;	
		}
	}
	else
	{
		*payload_len = 0;
		*payload = NULL;
		return 0;	
	}

	if(*payload > tsp + 187)
	{
		*payload_len = 0;
		*payload = NULL;
		return 0;
	}	

	*payload_len = tsp + 188 - *payload;		
	if(*payload_len > 184)
	{
		*payload_len = 0;	
		*payload = NULL;
		return 0;
	}
		
	return *payload_len;
}


typedef struct user_pes_structure
{
	unsigned char buf[PES_BUF_SIZE];
	unsigned int  buf_pos;
	unsigned int  last_len;
}user_pes_param_t;

static user_pes_param_t user_pes_param;

int pes_request_buffer(void *cookie, unsigned int req_size, void ** retbuf, unsigned int* retbuf_size)
{
	int remain;

	remain = PES_BUF_SIZE  - user_pes_param.buf_pos;
	if(remain < req_size)
	{
		*retbuf = NULL;
		*retbuf_size = 0;	
		printf("%s line %d, cant allock buffer.pos = %d.\n", __func__, __LINE__, user_pes_param.buf_pos);
		return -1;	
	}	
	else
	{
		*retbuf = user_pes_param.buf + user_pes_param.buf_pos;
		*retbuf_size = req_size;
	}
	return 0;
}


static FILE* outpes;
int pes_update_buffer(void *cookie, unsigned int size)
{
	unsigned char* temp;

	pes_feed_param_t *feed = (pes_feed_param_t*)cookie;

	temp = &user_pes_param.buf[user_pes_param.buf_pos];	
	if(feed->peshdr_seen)
	{
		printf("%s line %d, ts start fond!\n", __func__, __LINE__);
	}

	if(feed->peshdr_seen && ((temp[0] == 0x00) && (temp[1] == 0x00) && (temp[2] == 0x01)))
	{
	#if 0
		if(user_pes_param.last_len)
		{
			unsigned char *p = user_pes_param.buf;
	
			printf("%s line %d, update old pes.buf_pos = %d.last len = %d.0x%02x, 0x%02x, 0x%02x, 0x%02x.\n", __func__, __LINE__, user_pes_param.buf_pos, user_pes_param.last_len, p[0], p[1], p[2], p[3]);	
			
			fwrite(user_pes_param.buf, 1, user_pes_param.last_len, outpes);
			memcpy(user_pes_param.buf, temp, user_pes_param.buf_pos + size - user_pes_param.last_len);
			user_pes_param.buf_pos -= user_pes_param.last_len;
			user_pes_param.last_len = 0;
			printf("%s line %d, update old pes.buf_pos = %d.\n", __func__, __LINE__, user_pes_param.buf_pos);	
		}
	#endif
		printf("%s line %d, last_len = %d.\n", __func__, __LINE__, user_pes_param.last_len);
	
		user_pes_param.last_len += size;
	}
	else
	{
			user_pes_param.last_len += size;
	}

	user_pes_param.buf_pos += size;
	return 0;
}


int parse_pes_packet(pes_feed_param_t *feed, const unsigned char* tsp)
{
	const unsigned char* payload;
	unsigned int payload_len;
	unsigned char cc;
	int ccok;
	unsigned int retsize;
	int ret;

	if(feed == NULL || tsp == NULL)
	{
		return -1;
	}

	// for aw dsc, scrambled ctrl flag not clear after descrambled.
	if(ts_check_error_indicator(tsp) /*|| ts_scramble_flag(tsp)*/)  
	{
		return -1;
	}

	cc = tsp[3] & 0xf;
	ccok = (((feed->cc + 1) & 0xf) == cc) || (feed->cc == 0xff);
		
	if(!ccok)
	{
		printf("%s line %d, discontinue found, may loss pes data.\n", __func__, __LINE__);
		feed->discon_counter ++;
	}
	
	feed->cc = cc;
	
	if(pes_payload(tsp, &payload, &payload_len) == 0)
	{
		if(ts_get_payload_flag(tsp))
		{
			return -1;
		}

		return 0;
	}

	feed->peshdr_seen = ts_check_start_indicator(tsp);
	if(feed->peshdr_seen)
		printf("%s line %d, found peshdr.\n", __func__, __LINE__);

	if(payload_len)
	{
		feed->buf = NULL;
		feed->req_buf_len = feed->req_buf_pos = 0;
		
		if(feed->req_buf_cb)
		{
			ret = feed->req_buf_cb(feed, 188, &feed->buf, &retsize);
		}
		else
			return 0;

		if(ret != 0 || !feed->buf || (retsize == 0) || (retsize < payload_len))
		{
			return 0;
		}
	
	}		
	else
	{
		printf("%s line %d, wrong condition!\n", __func__, __LINE__);
		feed->buf = NULL;
		feed->req_buf_len = feed->req_buf_pos = 0;
		return 0;
	}

	memcpy(feed->buf + feed->req_buf_pos, payload, payload_len);
	feed->req_buf_pos += payload_len;	
	
	if(feed->upd_buf_cb )
	{
		ret = feed->upd_buf_cb(feed, payload_len);
	}

	feed->buf = NULL;
	feed->req_buf_len = feed->req_buf_pos = 0;
	
	return 0;
}

static pes_feed_param_t pes_param;
unsigned char dummy_ts[] = {
  0x47, 0x5f, 0xff, 0x37, 0x0e, 0x02, 0x0c, 0x02, 0x0a, 0x12, 0x4e, 0xdd,
  0x4a, 0x1b, 0x35, 0x03, 0x04, 0x00, 0x08, 0x00, 0x00, 0x01, 0xe0, 0x00,
  0x00, 0x83, 0xc0, 0x0a, 0x3d, 0xea, 0x51, 0x6c, 0xd7, 0x1d, 0xea, 0x51,
  0x18, 0x77, 0x00, 0x00, 0x01, 0x00, 0x06, 0x97, 0xff, 0xfb, 0x80, 0x00,
  0x00, 0x01, 0xb5, 0x83, 0x3f, 0xfb, 0x94, 0x00, 0x00, 0x00, 0x01, 0x01,
  0x1a, 0xb1, 0xea, 0x81, 0x3e, 0x55, 0x50, 0x7a, 0x9a, 0xc0, 0x0e, 0xaa,
  0x83, 0xc1, 0xf3, 0x4c, 0x27, 0x4f, 0x0a, 0xab, 0x40, 0x3f, 0xaa, 0x75,
  0x55, 0x4f, 0x55, 0x13, 0xaa, 0xda, 0xa8, 0x0e, 0x9a, 0x35, 0xe8, 0xe1,
  0x75, 0x55, 0x59, 0x3a, 0xba, 0xaa, 0xb3, 0x66, 0xaa, 0x8d, 0x6b, 0x49,
  0x6b, 0x49, 0x16, 0x8d, 0x88, 0xb5, 0x69, 0x95, 0x4c, 0x05, 0xff, 0xcd,
  0x34, 0x4c, 0x05, 0xf1, 0x12, 0xac, 0x13, 0x25, 0x47, 0x55, 0x74, 0x95,
  0x80, 0xca, 0x00, 0x00, 0x01, 0x02, 0x1a, 0x24, 0x2f, 0xc1, 0xc0, 0x5b,
  0x47, 0x28, 0x8a, 0x0c, 0x3f, 0xff, 0x34, 0x02, 0xe0, 0x34, 0x06, 0xad,
  0x36, 0xd3, 0xeb, 0x4b, 0x6b, 0x4d, 0xba, 0x01, 0x95, 0x03, 0x37, 0xff,
  0xd7, 0xce, 0x03, 0xfa, 0x9c, 0x68, 0x11, 0x79, 0x06, 0xcd, 0x6b, 0xf0,
  0x91, 0x20, 0x1b, 0x58, 0x07, 0xb3, 0xca, 0x7b
};

int main(void)
{
	FILE* tsfile;
	unsigned char buf[188];
	unsigned int size;
	int j;

	memset(&pes_param, 0x00, sizeof(pes_feed_param_t));
	
	pes_param.req_buf_cb = pes_request_buffer;
	pes_param.upd_buf_cb = pes_update_buffer;

	outpes = fopen("pespid1102.ts", "w+");
	if(outpes == NULL)
	{
		printf("%s line %d, create output file failed.\n", __func__, __LINE__);
		return -1;
	}	

	tsfile = fopen("CSA_V2_Clear.ts", "rb");
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
		if(ts_pid(buf) == 0x1102)
	    	{
			parse_pes_packet(&pes_param, buf);
	    	}
	}
	parse_pes_packet(&pes_param, dummy_ts);
	fwrite(user_pes_param.buf, 1, user_pes_param.last_len, outpes);
	fclose(outpes);
	fclose(tsfile);
	return 0;
}
