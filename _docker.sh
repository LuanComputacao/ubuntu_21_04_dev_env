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

docker run hello-world

# Install lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
