#!/usr/bin/env bash
if hyprctl clients | grep -q "class: blueconf"; then
    hyprctl dispatch closewindow "class:^blueconf"
else
    hyprctl dispatch closewindow "class:^netconf"
    alacritty --class=blueconf -e sh -c bluetui
fi