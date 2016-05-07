all:
	javac helloworld.java
	javah -jni helloworld
	gcc -shared -fPIC -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-9-openjdk-amd64/include/linux helloworld.c -o libhelloworld.so
test:
	java -Djava.library.path=. helloworld
