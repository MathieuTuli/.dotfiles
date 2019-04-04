#!/bin/sh
optirun true
intel-virtual-output
eval "$(ssh-agent)"
exec dunst
exec i3
