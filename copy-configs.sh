#!/bin/bash
set -e

echo "Copying configuration files..."

cp -f .bashrc ~

cp -f .zshrc ~
cp -r zsh ~

cp -f .tmux.conf ~
tmux source ~/.tmux.conf

echo "Configuration files copied successfully."
