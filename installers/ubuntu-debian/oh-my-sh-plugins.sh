#!/bin/bash
set -e

echo "Installing plugins for Oh My Zsh..."

PLUGIN_DIR="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins"

# Kubectx plugin
git clone --recursive https://github.com/unixorn/kubectx-zshplugin.git "$PLUGIN_DIR/kubectx"
cd "$PLUGIN_DIR/kubectx"
git submodule update --init --recursive

# Zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions "$PLUGIN_DIR/zsh-autosuggestions"

echo "Zsh plugins installed at $PLUGIN_DIR."
