#!/bin/sh
pid=`ps|grep -v grep|grep httpd|awk '{print $1}'`
if [ ! $pid]
then
/usr/sbin/httpd
pid=`ps|grep -v grep|grep httpd|awk '{print $1}'`
fi
gdb --attach :1234 $pid
