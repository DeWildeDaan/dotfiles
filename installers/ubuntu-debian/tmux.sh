#!/bin/bash
set -e

echo "Installing tmux..."
sudo apt update
sudo apt install -y tmux
echo "tmux installed successfully."
