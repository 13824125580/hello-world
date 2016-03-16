
//csa.c
#include <stdio.h>
#include "dvb.h"

#define CSA_V1_1     0
#define CSA_V2_1     1

void csa_main (byte_t control_word[], byte_t scrambled_field[], byte_t plain_field[], int len, unsigned char mode,FILE *ex)
{
  int i,j,k,r;//n,
  int index;
  byte_t common_key [8];
  byte_t reg0 [8], reg1 [8], reg2 [8];
  byte_t sort [8] = {0, 0, 0, 0, 0, 0, 0, 0};


  //conformance machanism
  for(i=0;i<8;i++)
  {
    common_key[i] = control_word[i];
  }
  if(mode == CSA_V1_1)
  {
      for(i=0;i<2;i++)
      {
        k = 0;
        for(j=0;j<3;j++)
            k += common_key[4*i+j];
        common_key[4*i+3] = k & 0xff;
      }
  }


  //Initialization of the 56 key bytes
  //  for the block cipher
  key_schedule(common_key);

  //Reset of the stream cipher
  reset_stream(common_key);

  j=0;
  index = 0;  //plain_field[index++]
  for(i=0;i<len+8-(len&7);i++)
  {
    reg1[j] = reg0[j];
	  if(i<8)
	  	init_stream(scrambled_field[i]);

	  if(i<len)
	  {
	    reg0[j] = scrambled_field[i];
	    if(i>7)
	    {
	      reg0[j] ^= (k=scrambling_byte());
	    }
    }

	  if((i>15) && (i<len+8))
	  {
	    reg2[j] ^= reg1[j];
	    plain_field[index++] = reg2[j];
	    //fprintf(ex, "0x%02x ", reg2[j]);  //Print Result
	    if(((i-15)%8)==0) fprintf(ex, "\n");
	  }
	  j += 1;
	  if((j==8)&&(i<len+8))
	  {
	    if(i>14)
	    {
	      for(k=0;k<8;k++)
	    	  sort[k] = reg1[k];
	      decipher(sort);
	      for(k=0;k<8;k++)
	  	  {
	  	    reg2[k] = sort[k];
	  	  }
	    }
	    j=0;
	  }
  }
  r = len&7;
	//Last block and possible residue
  if(len>7)  //Last block
  {
    for(i=0;i<8;i++)
	  {
	    //fprintf(ex, "0x%02x ", reg2[i]);
	    if(((len-r+i-7)%8)==0) fprintf(ex, "\n");
	    plain_field[index++] = reg2[i];
	  }
  }
  //fprintf(ex, "Residue : \n");
  for(i=0;i<r;i++)  //possible residue
  {
    //fprintf(ex, "0x%02x ", reg0[i]); //, p-r+i+1
    plain_field[index++] = reg0[i];
  }

  return;
}

unsigned int csa_descrambler_test(void)
{
	int i;
	byte_t plain_field[184];
    FILE *example1;
    FILE *example2;
    FILE *example3;
    FILE *example4;
    example1 = fopen("example1.txt","wt");
    example2 = fopen("example2.txt","wt");
    example3 = fopen("example3.txt","wt");
    example4 = fopen("example4.txt","wt");

	{
		csa_main((byte_t*)example1_control_word, (byte_t*)example1_scrambled_field, plain_field, (byte_t)example1_p,CSA_V1_1,example1);

		for(i=0; i<example1_p; i++)
		{
			if(plain_field[i] != example1_plain_field[i])
			{
				return 0;
			}
		}


		csa_main((byte_t*)example2_control_word, (byte_t*)example2_scrambled_field, plain_field, (byte_t)example2_p,CSA_V1_1,example2);

		for(i=0; i<example2_p; i++)
		{
			if(plain_field[i] != example2_plain_field[i])
			{
				return 0;
			}
		}



		csa_main((byte_t*)example3_control_word, (byte_t*)example3_scrambled_field, plain_field, (byte_t)example3_p,CSA_V1_1,example3);

		for(i=0; i<example3_p; i++)
		{
			if(plain_field[i] != example3_plain_field[i])
			{
				return 0;
			}
		}


        csa_main((byte_t*)example4_control_word, (byte_t*)example4_scrambled_field, plain_field, (byte_t)example4_p,CSA_V2_1,example4);

		for(i=0; i<example4_p; i++)
		{
			if(plain_field[i] != example4_plain_field[i])
			{
				return 0;
			}
		}


	}
	return 1;
}

