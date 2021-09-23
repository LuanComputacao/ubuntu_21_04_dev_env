#!/bin/bash

# terminator
sudo apt install -y terminator
sudo apt install -y tmux

# batcat
sudo apt install -y bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# Ag search
apt-get install -y silversearcher-ag

# fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# gPing
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update
sudo apt install -y gping

# Zoxide, A smarter cd command for your terminal
sudo apt install zoxide
