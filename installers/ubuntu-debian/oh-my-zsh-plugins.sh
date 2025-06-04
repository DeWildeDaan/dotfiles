#!/bin/bash
set -e

echo "Installing plugins for Oh My Zsh..."

# Kubectx plugin
git clone --recursive https://github.com/unixorn/kubectx-zshplugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/kubectx
cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/kubectx
git submodule update --init --recursive

# Zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Zsh plugins installed at ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins."
