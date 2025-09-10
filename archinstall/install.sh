#!/bin/bash

npm install -g @google/gemini-cli
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
git config --global credential.helper store
git config --global pull.rebase false
git config --global core.editor vim
# mkdir -p /mnt/home/sonapraneeth/Softwares
# mkdir -p /mnt/home/sonapraneeth/Softwares/CascadiaCode-2407.24
# pushd /mnt/home/sonapraneeth/Softwares
# git clone https://github.com/soakula-cp/scripts.git
# wget https://github.com/microsoft/cascadia-code/releases/download/v2407.24/CascadiaCode-2407.24.zip
# unzip CascadiaCode-2407.24.zip -d /home/sonapraneeth/Softwares/CascadiaCode-2407.24
# pushd CascadiaCode-2407.24
# fc-cache -fv
# popd
