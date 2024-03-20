#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

bash ~/easy-setup/scripts/brew-install.sh

bash ~/easy-setup/scripts/go-install.sh

brew install derailed/k9s/k9s

