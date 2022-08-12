#!/bin/sh

~/.screenlayout/default_desktop_layout.sh

# Tray icons
killall trayer
trayer --edge top --align right --SetDockType true --SetPartialStrut true \
       --expand true --width 10 --transparent true --alpha 0 --tint 0x283339  \
       --monitor 0 &

# Desktop notifications
killall dunst
dunst -config ~/.xmonad/dunstrc &

# Power manager
[ -z "$(pgrep xfce4-power-manager)" ] && xfce4-power-manager &

# Wallpaper
[ -z "$(pgrep nitrogen)" ] && nitrogen --restore &

# Screensaver
#[ -z "$(pgrep xscreensaver)" ] && xscreensaver -no-splash &

# compton
[ -z "$(pgrep compton)" ] && compton -b &

# Network Applet
[ -z "$(pgrep nm-applet)" ] && nm-applet &

# Guake
[ -z "$(pgrep guake)" ] && guake &

# xbindkeys
xbindkeys

setxkbmap -layout "us,el" -option "grp:alt_shift_toggle"

