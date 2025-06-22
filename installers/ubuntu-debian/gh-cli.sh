#!/bin/bash
set -e

echo "Installing gh-cli..."
sudo apt-key --keyring /usr/share/keyrings/githubcli-archive-keyring.gpg adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/github-cli2.list > /dev/null
sudo apt update
sudo apt install gh
echo "gh-cli installed."