#!/bin/bash
./SmcDumpKey MVHR 1
sleep 1
./SmcDumpKey MVMR 2
sleep 2
DISPLAY=:0.0 xrandr --output eDP --off
touch tdm_started
