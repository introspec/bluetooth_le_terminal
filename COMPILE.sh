#!/bin/sh
(cd contrib/pygattlib; make)
gcc -o thermal-printer -g -I /usr/include/glib-2.0/gio -I /usr/include/glib-2.0 -I /usr/lib/x86_64-linux-gnu/glib-2.0/include -I /usr/include/bluetooth -I contrib/bluez -I contrib/bluez/btio -I contrib/bluez/lib -I contrib/bluez/attrib -I contrib/bluez/src/shared thermal-printer.c gatt.c /usr/lib/x86_64-linux-gnu/libbluetooth.a -lglib-2.0 contrib/pygattlib/src/libgatt.so 
