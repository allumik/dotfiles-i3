#!/bin/sh
# xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output HDMI2 --off --output HDMI1 --off --output VGA1 --mode 1920x1080 --scale 1.1X1.1 --pos 1920x0 --rotate normal
xrandr --output eDP1 --auto 
xrandr --output VGA1 --auto --scale 1.1x1.1 --right-of eDP1
