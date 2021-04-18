#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils

# hotfix for getting oh-my-tmux submodule
(cd ~/.dotfiles && git submodule update --init)
