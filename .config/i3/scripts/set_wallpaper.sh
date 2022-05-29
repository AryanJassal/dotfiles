#!/bin/bash

while [ `pidof -x "mpv" >/dev/null | wc -l` > 0 ]
do
  killall mpv
done

feh --bg-fill $1
