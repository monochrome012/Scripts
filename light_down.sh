#!/bin/bash

msgId="2"
brightnessctl set 5%-
brightness="$(cat /sys/class/backlight/nvidia_0/brightness)"
dunstify -a "changeLight"\
        -u low\
        -r "$msgId"\
        -h int:value:"$brightness"\
        "Brightness: ${brightness}%"
