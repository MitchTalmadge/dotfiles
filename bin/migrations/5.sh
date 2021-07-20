#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# hotfix for getting oh-my-tmux submodule
(cd ~/.dotfiles && git submodule update --init)
