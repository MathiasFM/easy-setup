#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

bash brew-install.sh

bash go-install.sh

brew install derailed/k9s/k9s

