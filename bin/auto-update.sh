#!/bin/sh

if [ -z "$DOTFILES_UPDATED" ]; then
	echo "> Updating dotfiles..."
	(cd ~/.dotfiles && git pull --rebase origin master && sh bin/migrations/migrate.sh)
       	export DOTFILES_UPDATED="true"
fi
