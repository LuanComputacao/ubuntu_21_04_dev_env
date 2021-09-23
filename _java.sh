#!/bin/bash

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java 16.0.1.hs-adpt
sdk install java 11.0.11.hs-adpt

sdk default java 16.0.1.hs-adpt
sdk config
