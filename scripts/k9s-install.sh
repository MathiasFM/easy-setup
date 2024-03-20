#!/bin/bash

sudo apt-get install build-essential procps curl file git -y

brew install derailed/k9s/k9s

echo "export TERM=xterm-256color" >> ~/.bachrc
echo "export KUBE_EDITOR=vi" >> ~/.bashrc
