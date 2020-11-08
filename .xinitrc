#!/bin/sh
optirun true
intel-virtual-output
optirun true
intel-virtual-output
eval "$(ssh-agent)"
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
setxkbmap -option caps:escape
exec i3
