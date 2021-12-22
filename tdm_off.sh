#!/bin/bash
rm -f tdm_started
./SmcDumpKey MVHR 0
sleep 1
./SmcDumpKey MVMR 2
sleep 2
DISPLAY=:0.0 xrandr --output eDP --auto
