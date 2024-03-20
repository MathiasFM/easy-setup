#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

bash ~/easy-setup/scripts/brew-install.sh

source .bashrc

bash ~/easy-setup/scripts/go-install.sh

source .bashrc

sudo apt-get install build-essential procps curl file git -y

brew install derailed/k9s/k9s

