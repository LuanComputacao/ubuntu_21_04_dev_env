#!/bin/bash
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

sudo groupadd docker

sudo usermod -aG docker "$USER"

newgrp docker

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Docker Compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

# Docker Compose completions

sudo curl \
    -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/bash/docker-compose \
    -o /etc/bash_completion.d/docker-compose

# Install lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
