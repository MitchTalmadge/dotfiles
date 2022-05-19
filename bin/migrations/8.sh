#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# Add nvim config
mkdir -p ~/.config
rm -rf ~/.config/nvim
ln -sf ~/.dotfiles/tools/nvim/config ~/.config/nvim
