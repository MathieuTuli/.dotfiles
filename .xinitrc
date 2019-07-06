#!/bin/sh
optirun true
intel-virtual-output
sh $HOME/.scripts/keyboard-colour
eval "$(ssh-agent)"
exec i3
