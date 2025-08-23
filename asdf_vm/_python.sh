#!/bin/bash

sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

asdf plugin add python

env PYTHON_CONFIGURE_OPTS="--enable-shared" asdf install python 3.12.8
cd ~
asdf set python 3.12.8
cd -
pip install -U pip
asdf reshim
pip install psutil bpytop ipython black pre-commit
asdf reshim

