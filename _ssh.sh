#!/bin/bash

mkdir ~/.ssh
sudo apt install -y openssh-server
sudo systemctl status ssh
sudo ufw allow ssh
