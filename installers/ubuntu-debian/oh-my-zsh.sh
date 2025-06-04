#!/bin/bash
set -e

echo "Installing Oh My Zsh..."
#Download Oh My Zsh from the official repo
#note i'm using the k flag here since I was facing an SSL certificate problem downloading this, to be checked
sh -c "$(curl -fsSLk https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Oh My Zsh installed."
