#!/bin/sh

if [ -z "$DOTFILES_UPDATED" ]; then
	echo "> Updating dotfiles..."
	(cd ~/.dotfiles && git pull && cd bin && sh update.sh) 
fi
