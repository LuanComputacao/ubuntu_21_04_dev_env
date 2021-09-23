#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# - - - - - - -
#DEFAULT
# - - - - - - -
sudo apt install -y wget curl tree apt-transport-https git

# MEDIA SOFTWARES
./_media_softwares.sh

# BROWSERS
./_browsers.sh

# FONTS
./_fonts.sh

# MESSAGE
./_message.sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# TERMINAL TOOLS
./_terminal_1.sh

# ZSH
./_zsh.sh

# languages
./asdf_vm/_asdf.sh
./asdf_vm/_python.sh
./asdf_vm/_php.sh
./_node.sh
./_java.sh
./_ruby.sh
./_go.sh

# Terminal tools 2
./_terminal_2.sh

# Code editors
./code_editors/_sublime.sh
./code_editors/_code.sh
./code_editors/_vim.sh

# Mods
./_tweaks.sh
