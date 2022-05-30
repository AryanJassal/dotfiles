#!/bin/bash

if ! pidof -x "mpv" >/dev/null; then
  killall mpv
fi

xwinwrap -ov -ni -fs -- mpv -wid WID --keepaspect=no --loop $1
