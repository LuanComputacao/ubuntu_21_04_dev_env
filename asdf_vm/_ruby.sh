#!/bin/bash

sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev

asdf plugin add ruby

asdf install ruby 3.0.2
asdf global ruby 3.0.2
