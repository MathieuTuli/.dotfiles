#!/bin/sh
optirun true
intel-virtual-output
sh $HOME/.scripts/keyboard_colour
eval "$(ssh-agent)"
exec i3
