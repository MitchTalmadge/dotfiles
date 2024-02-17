#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# Undo migration 6. Custom themes have been moved to ~/.dotfiles/shells/zsh/oh-my-zsh-custom/themes
# Remove custom zsh theme
rm -f ~/.dotfiles/shells/zsh/oh-my-zsh/custom/themes/custom.zsh-theme