#!/bin/bash

sudo pacman -S --needed swww zsh rofi waybar swaync alacritty socat jq nwg-look flameshot iwd bluez bluetui wiremix hypridle nautilus exa

yay -S --needed nautilus-open-any-terminal actions-for-nautilus-git nmtui-go

./set-nautilus-terminal.sh #https://github.com/Stunkymonkey/nautilus-open-any-terminal