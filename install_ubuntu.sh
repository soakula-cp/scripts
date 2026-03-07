#!/bin/bash

# vim-enhanced nu python3-neovim
sudo apt-get install -y zsh wget gpg btop htop bat fzf neovim dotnet-sdk-8.0 aspnetcore-runtime-8.0 dotnet-runtime-8.0 eza lsd zoxide sd speedtest-cli graphviz gcc g++ git nala

sudo apt-get install -y rust-coreutils rust-findutils
export PATH=/usr/lib/cargo/bin/coreutils:$PATH
export PATH=/usr/lib/cargo/bin/findutils:$PATH

pushd ~/Downloads
wget https://github.com/microsoft/cascadia-code/releases/download/v2407.24/CascadiaCode-2407.24.zip
unzip CascadiaCode-2407.24.zip -d CascadiaCode
mkdir -p ~/.local/share/fonts
cp CascadiaCode/ttf/*.ttf ~/.local/share/fonts/
fc-cache -f -v

# Reference: https://code.visualstudio.com/docs/setup/linux
echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections
sudo apt-get install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code # or code-insiders

# Reference: https://apt.llvm.org/
wget -O - https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh
# Reference: https://stackoverflow.com/questions/20756924/how-can-i-install-clang-format-in-ubuntu
sudo apt install -y clang-format-19 clang-tidy-19
sudo ln -s /usr/bin/clang-format-19 /usr/bin/clang-format
sudo ln -s /usr/bin/clang-tidy-19 /usr/bin/clang-tidy

dotnet tool install -g git-credential-manager
git-credential-manager configure
git config --global credential.credentialStore secretservice
