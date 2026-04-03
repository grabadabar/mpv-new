#!/bin/sh
echo "Content-type: text/plain\n\n"

echo cycle pause | socat - /tmp/mpvsocket
echo '{ "command": [ "keypress", "o" ] }' | socat - /tmp/mpvsocket
