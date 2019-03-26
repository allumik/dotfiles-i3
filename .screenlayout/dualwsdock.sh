#!/bin/sh
# xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --mode 1920x1080 --scale 1.2x1.2 --panning 2304x1296 --right-of eDP1 --rotate normal --output HDMI2 --off --output HDMI1 --off --output VGA1 --off --output DP2 --off
xrandr --output eDP1 --auto 
xrandr --output DP2-3 --auto --scale 1.1x1.1 --right-of eDP1
