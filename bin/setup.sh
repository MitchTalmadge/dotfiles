#!/bin/sh
set -e

echo "Cloning Dotfiles Repo..."

git clone https://github.com/MitchTalmadge/dotfiles ~/.dotfiles
cd ~/.dotfiles
git submodule update --init

echo "Installing Dotfiles..."
cd bin
sh install.sh

echo "Setup Complete."
