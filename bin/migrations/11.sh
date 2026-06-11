#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# Add Karabiner complex-modification rule (Caps Lock -> F13 for tmux prefix). macOS only.
mkdir -p ~/.config/karabiner/assets/complex_modifications
ln -sf ~/.dotfiles/tools/karabiner/caps-to-f13.json \
  ~/.config/karabiner/assets/complex_modifications/caps-to-f13.json
