#!/bin/bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

curl https://github.com/asdf-vm/asdf/releases/download/v0.18.0/asdf-v0.18.0-linux-amd64.tar.gz

tar -zxvf asdf-v0.18.0-linux-amd64.tar.gz

echo 'export PATH="$PATH:/home/luancomputacao/.asdf"' >> .zshrc

# Add shims directory to path
echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> .zshrc

# Set up shell completions
mkdir -p "${ASDF_DATA_DIR:-$HOME/.asdf}/completions"
asdf completion zsh > "${ASDF_DATA_DIR:-$HOME/.asdf}/completions/_asdf"

# Append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit




