#!/bin/sh
optirun true
intel-virtual-output
eval "$(ssh-agent)"
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
setxkbmap -option caps:escape
alsactl --file ~/.config/asound.state restore
exec i3
