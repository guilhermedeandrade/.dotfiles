#!/usr/bin/fish

echo "Installing Fisher, a plugin manager..."
curl -sL https://git.io/fisher | source
fisher install jorgebucaran/fisher

echo "Installing plugins from fish_plugins file..."
fisher update
