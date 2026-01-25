#!/bin/bash

sudo pacman -S --needed swww zsh rofi waybar swaync alacritty socat jq nwg-look flameshot iwd impala bluez bluetui wiremix hypridle nautilus exa

yay -S nautilus-open-any-terminal actions-for-nautilus-git

./set-nautilus-terminal.sh #https://github.com/Stunkymonkey/nautilus-open-any-terminal