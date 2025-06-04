#!/bin/bash
set -e

echo "Installing tmux..."
sudo apt update
sudo apt install -y tmux
tmux source ~/.tmux.conf
echo "tmux installed successfully."
