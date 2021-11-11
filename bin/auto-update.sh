#!/bin/sh

case "$DOTFILES_INTERACTIVE" in
"false") exec >/dev/null 2>/dev/null ;; # Suppress all output for this script if not interactive
esac

if [ -z "$DOTFILES_UPDATED" ]; then
	echo "> Updating dotfiles..."
	( 
		cd ~/.dotfiles 
		git pull --rebase origin master \
		&& git submodule update --init \
		&& sh bin/migrations/migrate.sh \
	)
fi
