#!/bin/bash


#start Server
busybox httpd -p 8080

#kill running mpv processes
killall mpv 2> /dev/null
mpv --fullscreen --input-ipc-server=/tmp/mpvsocket ~/Videos/*
