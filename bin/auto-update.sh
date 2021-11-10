#!/bin/sh
. ~/.dotfiles/bin/utils/echo

if [ -z "$DOTFILES_UPDATED" ]; then
	echoi "> Updating dotfiles..."
	(cd ~/.dotfiles && git pull --rebase origin master && git submodule update --init && sh bin/migrations/migrate.sh)
fi
