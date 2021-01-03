#!/bin/bash

echo "Installing Yay, an AUR Helper Written in Go"  
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "Updating existing packages..."
sudo yay -Syyu

echo "Installing AUR packages..."
yay -S curl
yay -S git 
yay -S unzip 
yay -S fzf 
yay -S ripgrep 
yay -S jq
yay -S neovim
yay -S tldr
yay -S tmux 
yay -S tree
yay -S bat
yay -S httpie
yay -S community/fish
yay -S git-delta
yay -S xclip
yay -S visual-studio-code-insiders-bin
yay -S ulauncher
yay -S insomnia
yay -S firefox-developer-edition
yay -S responsively
yay -S mpv
yay -S discord
yay -S telegram-desktop
yay -S spotify
yay -S bitwarden
yay -S via-bin
yay -S qmk
yay -S plasma5-applets-latte-separator
yay -S nerd-fonts-jetbrains-mono
yay -S inter-font

echo "Installing packages from misc sources..."
curl -fsSL https://starship.rs/install.sh | bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

echo "Installing Docker (you should reboot after)..."
yay -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
