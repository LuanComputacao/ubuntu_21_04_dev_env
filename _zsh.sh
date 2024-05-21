#!/bin/bash

#Zsh
# sudo apt install zsh
chsh -s $(which zsh)

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat >>~/.zshrc <<EOL
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.profile ]; then
    . ~/.profile
fi
EOL

# ZSH Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting

# ZSH Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions

# ZSH 256color
$(cd $ZSH_CUSTOM/plugins && git clone https://github.com/chrissicool/zsh-256color)

# Enable plugins
sed -i '/plugins=(git)/c\plugins=\(git asdf compleat docker docker-compose zsh-256color zsh-syntax-highlighting zsh-autosuggestions\)' ~/.zshrc

# Power level 10K
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k
sed -i '/^ZSH_THEME.*/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc
cp ./configs/.p10k.zsh ~/

cp ./configs/.bash_aliases ~/
