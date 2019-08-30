#!/bin/bash

CURRENT_VERSION=`cat ~/.dotfiles/bin/migrations/current_version`

if [ -z "$DOTFILES_VERSION" ]
then
	DOTFILES_VERSION=0
fi

while [ "$DOTFILES_VERSION" -lt "$CURRENT_VERSION" ]
do 
	echo "Migrating from Version $DOTFILES_VERSION to Version $CURRENT_VERSION"
	let "DOTFILES_VERSION += 1" && \
	$SHELL ~/.dotfiles/bin/migrations/$DOTFILES_VERSION.sh && \
	echo "Done!"
done