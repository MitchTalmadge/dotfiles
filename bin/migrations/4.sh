#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# vim
backup_and_link ~/.dotfiles/tools/tmux/.tmux.conf.local ~/.tmux.conf.local
