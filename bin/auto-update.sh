#!/bin/sh
if [[ "$DOTFILES_INTERACTIVE" != "true" ]]; then
	exec &>/dev/null # Suppress all output for this script if not interactive
fi

if [ -z "$DOTFILES_UPDATED" ]; then
	echo "> Updating dotfiles..."
	( 
		
		cd ~/.dotfiles 
		git pull --rebase origin master \
		&& git submodule update --init \
		&& sh bin/migrations/migrate.sh \
	)
fi
