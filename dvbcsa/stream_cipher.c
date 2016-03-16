
//stream cipher
#include "dvb.h"

#define NUM_OF_SBOXES      7
#define SBOX_INPUT_SIZE    5
#define SBOX_OUTPUT_SIZE   2

typedef unsigned int uint;
typedef struct shiftreg
{
  uint len;
  uint cell[10];
} SHIFTREG;

SHIFTREG sr_a, sr_b;
uint c, d, e, f, r, bib;
uint idx;
//Declare and initiate tables specifying
//Various bit mappings : -from A to sboxes
//-from sboxes to C, -from B to D (via T3).
static const uint bit_from_a[NUM_OF_SBOXES][SBOX_INPUT_SIZE] = {
			{16,  2, 23, 25, 36}, { 7, 10, 21, 28, 35},
			{ 1,  8, 19, 17, 22}, { 9,  3,  5, 14, 32},
			{18, 13, 24, 31, 34}, {11, 15, 20, 26, 33},
			{ 6, 12, 27, 30, 29}};

static const uint bit_to_c[NUM_OF_SBOXES][SBOX_OUTPUT_SIZE] = {
			{4, 10}, {3, 9}, {8, 2}, {7, 1}, {12, 6}, {11, 5}, {13, 14}};

static const uint bit_from_b[4][4] = {
			{12, 23, 26, 33}, {9, 14, 24, 31}, {16, 19, 17, 30}, {11, 21, 32, 34}};

static const uint sbox[NUM_OF_SBOXES][32] = {
			{2,0,1,1,2,3,3,0, 3,2,2,0,1,1,0,3, 0,3,3,0,2,2,1,1, 2,2,0,3,1,1,3,0},
			{3,1,0,2,2,3,3,0, 1,3,2,1,0,0,1,2, 3,1,0,3,3,2,0,2, 0,0,1,2,2,1,3,1},
			{2,0,1,2,2,3,3,1, 1,1,0,3,3,0,2,0, 1,3,0,1,3,0,2,2, 2,0,1,2,0,3,3,1},
			{3,1,2,3,0,2,1,2, 1,2,0,1,3,0,0,3, 1,0,3,1,2,3,0,3, 0,3,2,0,1,2,2,1},
			{2,0,0,1,3,2,3,2, 0,1,3,3,1,0,2,1, 2,3,2,0,0,3,1,1, 1,0,3,2,3,1,0,2},
			{0,1,2,3,1,2,2,0, 0,1,3,0,2,3,1,3, 2,3,0,2,3,0,1,1, 2,1,1,2,0,3,3,0},
			{0,3,2,2,3,0,0,1, 3,0,1,3,1,2,2,1, 1,0,3,3,0,1,1,2, 2,3,1,0,2,3,0,2}};


void do_nibble(byte_t, byte_t);

//Get bit_num from sr
uint get_sr_bit(SHIFTREG sr, uint bit_num)
{
  return ((sr.cell[bit_num/4]>>(3-(bit_num%4)))&1);
}

//shift SR by one nibble and push in the feedbak nibble
void shift_register(SHIFTREG *sr, uint feedback_nibble)
{
  short i;
  for(i=sr->len-1;i>0;i--)
  {
    sr->cell[i] = (uint)(sr->cell[i-1]);
  }
  sr->cell[0] = (uint)(feedback_nibble);
}

//Reset of the stream cipher
void reset_stream(byte_t *cw)
{
  int j;
  
  sr_a.len = sr_b.len = 10;
  sr_a.cell[8] = sr_b.cell[8] = 0;
  sr_a.cell[9] = sr_b.cell[9] = 0;
  c = d = e = f = r = 0;
  for(j=0;j<4;j++)
  {
    sr_a.cell[j+j] = (cw[j]>>4) & 0x0f;
	  sr_a.cell[j+j+1] = (cw[j]) & 0x0f;
	  sr_b.cell[j+j] = (cw[j+4]>>4) & 0x0f;
	  sr_b.cell[j+j+1] = (cw[j+4]) & 0x0f;
  }
  idx = 0;
  return;
}

// Initialization of the stream cipher
void init_stream(byte_t in)
{
  byte_t ni;
  ni = ((in>>4)&0x0f)|((in&0x0f)<<4);
  do_nibble(in, 0);
  do_nibble(ni, 0);
  do_nibble(in, 0);
  do_nibble(ni, 0);
  return;
}

//Genreration of one scrambling byte
byte_t scrambling_byte(void)
{
  unsigned char sbyte;
  //static unsigned char sb;

  do_nibble(0, 1);
  sbyte = bib<<6;
  do_nibble(0, 1);
  sbyte |= bib<<4;
  do_nibble(0, 1);
  sbyte |= bib<<2;
  do_nibble(0, 1);
  sbyte |= bib;
  //sb = sbyte;
  return sbyte;  
}


//================================================
void do_nibble(byte_t in, byte_t bb)
{
  uint k, j, x, y, z, p, q;
  uint local, sav_d, sav_e;

  sav_d = d; sav_e = e;
  x = (c >> 10) & 0x0f;
  y = (c >> 6) & 0x0f;
  z = (c >> 2) & 0x0f;
  p = (c >> 1) & 1;
  q = c & 1;
  
  if(idx < 65)
  {
    j = (in & 0xf0) >> 4;
	  j = in & 0x0f;
  }
  idx += 1;

  //update C, according to S
  for(k=0, c=0; k<NUM_OF_SBOXES; k++)
  {
    for(j=0, local=0; j<SBOX_INPUT_SIZE; j++)
    	//local |= get_sr_bit(sr_a, bit_from_a[k][j])<<(4-j); //daniel
		  local |= get_sr_bit(sr_a, bit_from_a[k][j]-1)<<(4-j);
	  c |= (sbox[k][local] >> 1) << (14 - bit_to_c[k][0]);
    c |= (sbox[k][local] &  1) << (14 - bit_to_c[k][1]);
  }

  //update D, according to T3
  for(k=0, local=0; k<4; k++)
	  for(j=0; j<4; j++)
		  local ^= get_sr_bit(sr_b, bit_from_b[3-k][j] - 1) << k;
  d = local ^ sav_e ^ z;
  bib = ((d&8)>>2)^((d&4)>>1);
  bib |= ((d&2)>>1)^(d&1);

  //update E, and then F and r, according to T4
  e = f;   //Shift Register
  if(q==1)  //Adder
  {
    f = (local = (sav_e + z + r)) & 0x0f;
	  r = (local > 0x0f) ? 1:0;
  }
  else f = sav_e;  //By Pass

  //update A, according to T1
  x ^= (sr_a.cell[10-1]);  //XOR
  if(bb == 0) x^= ((in>>4)&0x0f)^sav_d;  //Round Shift & XOR
  shift_register(&sr_a, x);

  //update B, according to T2.
  y ^= sr_b.cell[10-1]^sr_b.cell[7-1];
  if(bb == 0) y ^= (in & 0x0f);
  if(p == 1) y = ((y&7)<<1)|((y&8)>>3);
  shift_register(&sr_b, y);
  return;
}


