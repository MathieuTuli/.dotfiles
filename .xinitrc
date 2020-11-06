#!/bin/sh
optirun true
intel-virtual-output
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
eval "$(ssh-agent)"
# COMMENTS
setxkbmap -option caps:escape
exec i3
