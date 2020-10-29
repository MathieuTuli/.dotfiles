#!/bin/sh
# optirun true
# intel-virtual-output
eval "$(ssh-agent)"
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
exec i3
# nvidia-screen-tear
# keyboard-colour "\x83\xAA\xFF"
# COMMENTS
