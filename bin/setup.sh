#!/bin/sh
set -e

echo "Cloning Dotfiles Repo..."

git clone https://github.com/MitchTalmadge/dotfiles ~/.dotfiles
cd ~/.dotfiles
git submodule update --init

echo "Installing Dotfiles..."

# Migrations
sh bin/migrations/migrate.sh && \

# Fonts
sh lib/powerline-fonts/install.sh && \

echo "Complete! Restart your shell to apply changes." || \
echo "Failed to install."
