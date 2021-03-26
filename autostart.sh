#! /bin/bash

picom &
qv2ray &
blueman-applet &
nm-applet &
slstatus &

feh --randomize --bg-fill ~/Pictures/Wallpapers/

# /bin/bash ~/Scripts/dwm_status.sh &

brightnessctl set 10% &



# fcitx5
export GTK_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export QT_IM_MODULE=fcitx5
fcitx5 &
