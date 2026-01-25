#!/usr/bin/env bash
if hyprctl clients | grep -q "class: netconf"; then
    hyprctl dispatch closewindow "class:^netconf"
else
    hyprctl dispatch closewindow "class:^blueconf"
    alacritty --class=netconf -e sh -c impala
fi