#!/bin/bash

case $1 in 
   start)
#   mpv --loop-playlist=inf --input-ipc-server=/tmp/mpvsocket /home/georgi.i.dimitrov/Videos/first.mp4 /home/georgi.i.dimitrov/Videos/second.mp4 /home/georgi.i.dimitrov/Videos/third.mp4  > /dev/null 2>&1 &;;	   
    mpv --fullscreen --loop-playlist=inf --input-ipc-server=/tmp/mpvsocket /home/georgi.i.dimitrov/Videos/my_list.m3u  > /dev/null 2>&1 &;;
   next)
   echo '{ "command": ["playlist-next"] }' |  socat - /tmp/mpvsocket;;
   prev)
   echo '{ "command": ["playlist-prev"] }' |  socat - /tmp/mpvsocket;;
   stop) 
   pkill mpv;;	   
   *)
   echo "use start to start streem, or next, or prev to play between clips, or stop to stop streem";;

esac   
