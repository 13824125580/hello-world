
//dvb.h
#include <stdio.h>
typedef unsigned char  byte_t;

//void memcpy(byte_t* dst, byte_t* src, unsigned int len);
//void memset(byte_t* dst, byte_t val, unsigned int len);

//typedef unsigned char  byte_t;

void key_schedule (byte_t []);
void encipher (byte_t []);
void decipher (byte_t []);
void reset_stream (byte_t []);
void init_stream (byte_t);
byte_t scrambling_byte (void);

void csa_main (byte_t control_word[], byte_t scrambled_field[], byte_t plain_field[], int len, unsigned char mode,FILE *ex);


const unsigned char example1_control_word [8];
const unsigned int example1_p;
const unsigned char example1_scrambled_field [184];
const unsigned char example1_plain_field [184];

const unsigned char example2_control_word [8];
const unsigned int example2_p;
const unsigned char example2_scrambled_field [184];
const unsigned char example2_plain_field [184];

const unsigned char example3_control_word [8];
const unsigned int example3_p;
const unsigned char example3_scrambled_field [184];
const unsigned char example3_plain_field [184];

const unsigned char example4_control_word [8];
const unsigned int example4_p;
const unsigned char example4_scrambled_field [184];
const unsigned char example4_plain_field [184];


unsigned int csa_descrambler_test(void);
//=============EOF=======================
