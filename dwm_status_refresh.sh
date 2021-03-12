#!/bin/bash

#battery
Battery=$(cat /sys/class/power_supply/BAT0/capacity)%
BatteryStatus=$(cat /sys/class/power_supply/BAT0/status)
if [[ $BatteryStatus == D* ]];then
    BatteryStatus='未充电'
else
    BatteryStatus='充电中'
fi


# backlight
# BackLight=$(xbacklight | cut -d. -f1)
BackLight=$(cat /sys/class/backlight/nvidia_0/brightness)

# volume
Volume=$(amixer get Master |tail -n1 |cut -d'[' -f4 |cut -d']' -f1)
if [[ $Volume == off ]];then
    Volume='mute'
else
    Volume=$(amixer get Master | sed -n '6p' | cut -d'[' -f2 | cut -d% -f1)
fi

# datetime
DateTime=$(date +"%a %m-%d %T" )
xsetroot -name "|Bat.$BackLight%|Vol.$Volume%|$DateTime|[$BatteryStatus:$Battery]"

