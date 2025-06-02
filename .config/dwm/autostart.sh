#!/bin/bash

killall wp.sh
killall slstatus

fcitx5 -d
~/.config/dwm/wp.sh &
picom &
slstatus &
