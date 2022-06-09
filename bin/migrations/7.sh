#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# Add nvim plugin manager
mkdir -p ~/.local/share/nvim/site
ln -sf ~/.dotfiles/tools/nvim/autoload ~/.local/share/nvim/site/autoload
