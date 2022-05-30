#!/bin/bash

# if ! pidof -x "mpv" >/dev/null
killall mpv
# fi

feh --bg-fill $1
