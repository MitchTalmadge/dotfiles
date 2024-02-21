#!/bin/sh
. ~/.dotfiles/bin/utils/log

case "$DOTFILES_INTERACTIVE" in
"false") exec >/dev/null 2>/dev/null ;; # Suppress all output for this script if not interactive
esac

if [ -z "$DOTFILES_UPDATED" ]; then
	df_log "> Updating dotfiles..."
	( 
		cd ~/.dotfiles 
		git pull --quiet --rebase origin master \
		&& git submodule update --init \
		&& sh bin/migrations/migrate.sh \
	)
fi
