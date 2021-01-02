#!/bin/bash

echo "Setting fish as the default shell..."
echo (which fish) | sudo tee -a /etc/shells
chsh -s (which fish)