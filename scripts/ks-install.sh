#!/bin/bash

brew install fzf

echo 'eval "$(fzf --bash)"' >> ~.bashrc

echo '
ks() {
  bold=$(tput bold)
  normal=$(tput sgr0)
  selected=$(ls "${HOME}/.kube/configs/" | xargs -n 1 basename | fzf --height 25% --prompt "Select kubeconfig> " --border)
  if [ $? -eq 0 ]; then
    echo "${bold}Selected kubeconfig:${normal} ${selected}"
    export KUBECONFIG="${HOME}/.kube/configs/${selected}"
  fi
}' >> ~/.bashrc
