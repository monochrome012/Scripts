#! /bin/bash

# Increase key repeat speed
# Disable screen power saving settings
# Disable screen blanking
xset r rate 250 30
xset -dpms
xset s off

picom &
qv2ray &
blueman-applet &
nm-applet &
slstatus &
nutstore &

~/Scripts/xcape.sh

# if [ -f $HOME/.Xmodmap ]; then
#     /usr/bin/xmodmap $HOME/.Xmodmap
# fi


feh --randomize --bg-fill ~/Pictures/Wallpapers/

# /bin/bash ~/Scripts/dwm_status.sh &

brightnessctl set 10% &



# fcitx5
export GTK_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export QT_IM_MODULE=fcitx5
fcitx5 &
