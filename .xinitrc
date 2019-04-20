#!/bin/sh
optirun true
intel-virtual-output
sh $HOME/.sripts/keyboard_colour
eval "$(ssh-agent)"
exec i3
