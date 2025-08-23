#!/bin/bash

asdf plugin add rust https://github.com/asdf-community/asdf-rust.git

asdf list all rust

asdf install rust 1.89.0

cd ~
asdf set rust 1.89.0
cd -

