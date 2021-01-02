#!/bin/bash

echo "Installing Aptitude, a high-level interface to the package manager..."
sudo apt install -y aptitude

echo "Updating existing packages..."
sudo aptitude update

echo "Installing new packages..."
sudo aptitude install -y curl
sudo aptitude install -y git
sudo aptitude install -y unzip
sudo aptitude install -y fzf
sudo aptitude install -y jq
sudo aptitude install -y neovim
sudo aptitude install -y ripgrep
sudo aptitude install -y tldr
sudo aptitude install -y tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sudo aptitude install -y tree
sudo aptitude install -y bat
sudo aptitude install -y httpie
curl -fsSL https://starship.rs/install.sh | bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo aptitude update
sudo aptitude install -y fish
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo aptitude update && sudo aptitude install --without-recommends yarn
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions


