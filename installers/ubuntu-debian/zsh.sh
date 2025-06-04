#!/bin/bash
set -e

echo "Installing Zsh..."
#install zsh
sudo apt update
sudo apt install zsh
#verfiy zsh version 
zsh --version
#switch to zsh shell and configure shell to your needs and save it 
zsh
#permanently add zsh as your default shell 
chsh -s $(which zsh) 
echo "Zsh installation complete. Please restart your terminal or log out and log back in to apply changes."
