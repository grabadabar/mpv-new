#!/bin/sh

echo "Content-type: text/plain\n\n"

echo playlist_prev| socat - /tmp/mpvsocket
