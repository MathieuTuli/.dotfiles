#!/bin/sh
killall -q polybar
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	echo $m
        MONITOR=$m polybar --reload main&
        MONITOR=$m polybar --reload main-bottom&
    done
else
    polybar --reload main&
    polybar --reload main-bottom&
fi
