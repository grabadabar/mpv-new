#!/bin/bash 

export DISPLAY=:0
export XAUTHORITY=/home/user/.Xauthority

mpv --fullscreen --input-ipc-server=/tmp/mpvsocket ~/Videos/*
