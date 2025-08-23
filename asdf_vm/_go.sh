#!/bin/bash

apt install coreutils

asdf plugin add golang https://github.com/asdf-community/asdf-golang.git

echo '. ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh' >> ~/.zshrc

asdf install golang 1.24.6
cd ~
sdf set golang 1.24.6
cd -

