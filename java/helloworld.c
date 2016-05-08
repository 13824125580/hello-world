#include <jni.h>  
#include <stdio.h>  
#include "helloworld.h"  

JNIEXPORT void JNICALL Java_helloworld_print  
  (JNIEnv *env, jobject obj)  
{  
        printf("HelloWorld JNI!\n");  
        return;  
} 

JNIEXPORT jstring JNICALL Java_helloworld_getline
  (JNIEnv * env, jobject obj, jstring prompt)
{
    	char buf[128] = {0, };
    	const jbyte *str;
    	str = (*env)->GetStringUTFChars(env, prompt, NULL);
    	if(str == NULL) {
        	return NULL;        
    	}
    	printf("%s\n", str);
    	(*env)->ReleaseStringUTFChars(env, prompt, str);
    	scanf("%s", buf);
    	return (*env)->NewStringUTF(env, buf);
}

