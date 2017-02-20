/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2017年02月20日 13时02分20秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include <stdlib.h>
#include <dbus/dbus.h>
#include <unistd.h>
 
const int RES_SUCCESS = -1;
const int RES_FAILED  = 0;
 
int my_dbus_initialization(char const * _bus_name, DBusConnection ** _conn) {
    DBusError err;
 
    int ret;
 
    dbus_error_init(&err);
 
    *_conn = dbus_bus_get(DBUS_BUS_SESSION, &err);
    if(dbus_error_is_set(&err)) {
        printf("Connection Error\n");
        dbus_error_free(&err);
        return RES_FAILED;
    }
 
    ret = dbus_bus_request_name(*_conn, _bus_name, DBUS_NAME_FLAG_REPLACE_EXISTING, &err);
    if(dbus_error_is_set(&err)){
        printf("Requece name error \n");
        dbus_error_free(&err);
        return RES_FAILED;
    }
 
    if(DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER != ret) {
        return RES_FAILED;
    }
 
    return RES_SUCCESS;
}
 
int my_dbus_send_sigal(DBusConnection * conn) {
    dbus_uint32_t serial = 0;
    DBusMessage* msg;
    DBusMessageIter args;
    char sigvalue[20] = "liyiwen";
 
    msg = dbus_message_new_signal("/test/signal/Object",  // object name
        "test.signal.Type",     // interface name
        "Test");                // name of signal
 
    if (NULL == msg) {
        printf("Message Null");
        return RES_FAILED;
    }
 
    dbus_message_iter_init_append(msg, &args);
 
    printf("%s\n", sigvalue);
    dbus_uint32_t my_age = 19;
    if(!dbus_message_iter_append_basic(&args, DBUS_TYPE_UINT32, &my_age)) {
        printf("Out of memory\n");
        return RES_FAILED;
    }
 
    if(!dbus_connection_send(conn, msg, &serial)) {
        printf("Out of memory");
        return RES_FAILED;
    }
    dbus_connection_flush(conn);
 
    dbus_message_unref(msg);
 
    return RES_SUCCESS;
 
}
 
int main(int agrc, char** argv)
{
    DBusConnection * conn;
 
    printf("Start\n");
    if (RES_FAILED == my_dbus_initialization("test.method.client", &conn)) {
        exit(1);
    }
    my_dbus_send_sigal(conn);
 
    while(1){sleep(10);}
 
    return 0;
}
