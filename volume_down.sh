#!/bin/bash
# changeVolume

msgId="3"

amixer set Master 5%- umute

volume="$(amixer get Master | tail -1 | awk '{print $4}' | sed 's/[^0-9]*//g')"
mute="$(amixer get Master | tail -1 | awk '{print $6}' | sed 's/[^a-z]*//g')"
if [[ $volume == 0 || "$mute" == "off" ]]; then
dunstify -a "changeVolume"\
        -u low\
        -r "$msgId" \
        "Volume muted"
elif [[ $volume<30 ]]; then
dunstify -a "changeVolume"\
        -u low\
        -r "$msgId"\
        -h int:value:"$volume"\
        "Volume: ${volume}%"
elif [[ $volume<60 ]]; then
dunstify -a "changeVolume"\
        -u low\
        -r "$msgId"\
        -h int:value:"$volume"\
        "Volume: ${volume}%"
else
dunstify -a "changeVolume"\
        -u low\
        -r "$msgId"\
        -h int:value:"$volume"\
        "Volume: ${volume}%"
fi

canberra-gtk-play -i audio-volume-change -d "changeVolume"
