#!/bin/bash
set -e

echo "Installing k9s..."
LATEST=$(curl -s https://api.github.com/repos/derailed/k9s/releases/latest | grep browser_download_url | grep 'k9s_Linux_amd64.tar.gz"' | head -n 1 | cut -d '"' -f 4)
TARBALL=$(basename "$LATEST")
curl -LO "$LATEST"
tar -xzf "$TARBALL"
sudo mv k9s /usr/local/bin/k9s
rm "$TARBALL"
echo "k9s installed."

# Set up plugins.yaml
echo "Configuring k9s plugins..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"  # Navigate two levels up to project root
PLUGIN_SRC="$ROOT_DIR/config/k9s-plugins/plugins.yaml"
PLUGIN_DEST="$HOME/.config/k9s/plugins.yaml"

mkdir -p "$(dirname "$PLUGIN_DEST")"
cp "$PLUGIN_SRC" "$PLUGIN_DEST"

echo "k9s plugins.yaml copied to $PLUGIN_DEST"
