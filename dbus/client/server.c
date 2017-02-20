/*
 * =====================================================================================
 *
 *       Filename:  server.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2017年02月20日 13时03分07秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>
#include <stdlib.h>
#include <dbus/dbus.h>
#include <unistd.h>
 
const int RES_SUCCESS = -1;
const int RES_FAILED  = 0;
 
int my_dbus_initialization(char const * _bus_name, DBusConnection **_conn) {
    DBusError err;
    int ret;
 
    dbus_error_init(&err);
 
    *_conn = dbus_bus_get(DBUS_BUS_SESSION, &err);
    if(dbus_error_is_set(&err)) {
        printf("Connection Error(%s) \n", err.message);
        dbus_error_free(&err);
        return RES_FAILED;
    }
 
    ret = dbus_bus_request_name(*_conn, _bus_name, DBUS_NAME_FLAG_REPLACE_EXISTING, &err);
    if(dbus_error_is_set(&err)){
        printf("Requece name error(%s) \n", err.message);
        dbus_error_free(&err);
        return RES_FAILED;
    }
    if(DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER != ret) {
        return RES_FAILED;
    }
    return RES_SUCCESS;
}
 
int main(int agrc, char** argv)
{
 
    DBusError err;
    DBusMessage* msg;
    DBusMessageIter args;
 
    dbus_error_init(&err);
    DBusConnection *conn;
    if (RES_FAILED == my_dbus_initialization("test.method.server", &conn)) {
        exit(1);
    }
 
    dbus_bus_add_match(conn, "type='signal', interface='test.signal.Type'", &err);
 
    dbus_connection_flush(conn);
    if(dbus_error_is_set(&err)) {
        printf("dbus_bus_add_match err (%s)", err.message);
        return RES_FAILED;
    }
 
    while(1) {
        dbus_connection_read_write(conn, 0);
        msg = dbus_connection_pop_message(conn);
 
        if(NULL == msg) {
            sleep(1);
            continue;
        }
 
        if(dbus_message_is_signal(msg, "test.signal.Type", "Test")) {
            if(!dbus_message_iter_init(msg, &args)) {
                printf("dbus_message_iter_init error, msg has no arguments!\n");
            }
            else if (DBUS_TYPE_UINT32 != dbus_message_iter_get_arg_type(&args)){
                printf("not a uint 32 type !\n");
            }
            else {
                dbus_uint32_t my_age = 0;
                dbus_message_iter_get_basic(&args, &my_age);
                printf("Got signal with value %d\n", my_age);
            }
        }
 
        dbus_message_unref(msg);
 
    }
 
    return 0;
}
