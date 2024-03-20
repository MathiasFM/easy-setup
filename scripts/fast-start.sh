#!/bin/bash

SCRIPT_PATH="~/easy-setup/scripts"

sudo apt update -y
sudo apt upgrade -y

bash ${SCRIPT_PATH}/brew-install.sh

source ~/.bashrc

bash ${SCRIPT_PATH}/go-install.sh

source ~/.bashrc

bash ${SCRIPT_PATH}/k9s-install.sh

source ~/.bashrc

bash ${SCRIPT_PATH}/ks-install.sh

source ~/.bashrc
