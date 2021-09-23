#!/bin/bash

sudo apt install -y vim
cp -r ./configs/.vim ~/
cp -r ./configs/.vimrc ~/
vim +PlugInstall +qall
