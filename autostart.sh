#! /bin/bash

# Increase key repeat speed
# Disable screen power saving settings
# Disable screen blanking
C
xset r rate 250 30
xset -dpms
xset s off


picom &
blueman-applet &
nm-applet &
slstatus &
dunst &
qv2ray &
unclutter -idle 1 -jitter 2 -root &

~/Scripts/xcape.sh

# if [ -f $HOME/.Xmodmap ]; then
#     /usr/bin/xmodmap $HOME/.Xmodmap
# fi

feh --randomize --bg-fill ~/Pictures/Wallpapers/

# /bin/bash ~/Scripts/dwm_status.sh &

brightnessctl set 10% &

export all_proxy=socks5://127.0.0.1:1089

export GTK_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export QT_IM_MODULE=fcitx5
fcitx5 &
