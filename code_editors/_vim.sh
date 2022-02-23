#!/bin/bash

sudo apt install -y vim
cp -r ./configs/.vim ~/
cp -r ./configs/.vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PlugInstall +qall
