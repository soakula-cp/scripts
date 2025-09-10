#!/bin/bash

mkdir -p /home/sonapraneeth/Softwares
pushd /home/sonapraneeth/Softwares
git clone https://aur.archlinux.org/yay.git
pushd yay
makepkg -si --no-confirm
yay -S google-chrome zen-browser-bin visual-studio-code-bin anaconda
