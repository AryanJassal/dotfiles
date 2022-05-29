#!/bin/bash

while [ `pidof -x "mpv" >/dev/null | wc -l` > 0 ]
do
  killall mpv
done

xwinwrap -ov -ni -fs -- mpv -wid WID --keepaspect=no --loop $1
