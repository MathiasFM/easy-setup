#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

bash ~/easy-setup/scripts/brew-install.sh

source ~/.bashrc

bash ~/easy-setup/scripts/go-install.sh

source ~/.bashrc

bash ~/easy-setup/scripts/k9s-install.sh

source ~/.bashrc
