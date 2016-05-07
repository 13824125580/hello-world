#include <jni.h>  
#include <stdio.h>  
#include "helloworld.h"  
JNIEXPORT void JNICALL Java_helloworld_print  
  (JNIEnv *env, jobject obj)  
{  
        printf("HelloWorld JNI!\n");  
        return;  
} 
