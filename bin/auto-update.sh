#!/bin/sh

if [ -z "$DOTFILES_UPDATED" ]; then
	echo "> Updating dotfiles..."
	(cd ~/.dotfiles && git pull --rebase origin master && git submodule update --init && sh bin/migrations/migrate.sh)
fi
