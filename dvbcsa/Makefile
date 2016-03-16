all:lib
	gcc -static -g main.c -L./ -lcsa -o csad
lib:
	gcc -c -g -static example1.c
	gcc -c -g -static example2.c
	gcc -c -g -static example3.c
	gcc -c -g -static example4.c
	gcc -c -g -static csa.c
	gcc -c -g -static stream_cipher.c
	gcc -c -g -static block_cipher.c
	ar -crsv libcsa.a *.o
clean:
	-rm *.o *.a csad clear.ts log.txt


