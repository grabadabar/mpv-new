#!/bin/sh

echo "Content-type: text/plain\n\n"


echo seek 10| socat - /tmp/mpvsocket
echo '{ "command": [ "keypress", "o" ] }' | socat - /tmp/mpvsocket
