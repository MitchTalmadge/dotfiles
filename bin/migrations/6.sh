#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# Add custom zsh theme
ln -sf ~/.dotfiles/shells/zsh/custom.zsh-theme ~/.dotfiles/shells/zsh/oh-my-zsh/custom/themes/custom.zsh-theme
