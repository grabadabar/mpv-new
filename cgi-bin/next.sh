#!/bin/sh


echo "Content-type: text/plain\n\n"

echo playlist_next | socat - /tmp/mpvsocket
