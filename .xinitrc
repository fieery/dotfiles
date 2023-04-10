#!/bin/sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[ -z "$DBUS_SESSION_BUS_ADDRESS" ] && eval $(/usr/bin/dbus-launch --exit-with-session --sh-syntax) 
lxsession &

# Keyboard
sxhkd &

# Image
feh --bg-fill --randomize ~/Pictures/Wallpapers/* &
#xcompmgr &
$SCR/blugon &

# Audio
pipewire &

# Notifications
dunst &

# DE / WM
#exec startxfce4
exec dwmblocks &
exec dwm
