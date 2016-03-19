all:
	gcc  -g -std=c99 -static -fstack-protector -fstack-protector-all -fstack-limit-symbol=256 secparser.c -o secp
	gcc  -g -std=c99 -static -fstack-protector -fstack-protector-all -fstack-limit-symbol=256 pesparser.c -o pesp 
	gcc  -g -std=c99 -static -fstack-protector -fstack-protector-all -fstack-limit-symbol=256 crc32.c -o crc32test 
clean:
	rm -fr secp pesp crc32test *.o 
