#!/bin/sh
# optirun true
# xset r rate 200 20
# intel-virtual-output
eval "$(ssh-agent)"
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# dbus-update-activation-environment --systemd DISPLAY
# export SSH_AUTH_SOCK
# setxkbmap -option caps:escape
# alsactl --file ~/.config/asound.state restore
# nvidia-screen-tear
# xset -dpms
# xset s off
# xsetwacom -v set "Wacom Intuos Pro M Pad pad" MapToOutput DP1-2
exec i3
# exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
