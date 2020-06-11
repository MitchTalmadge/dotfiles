#!/bin/sh
set +o xtrace

# Determine version from biggest migration name.
VERSION=0
for entry in `ls . | grep -E "^[0-9]+\.sh$"`
do
  ENTRY_VER=`echo $entry | grep -oE "[0-9]+"`
  if [ "$ENTRY_VER" -gt "$VERSION" ]; then
    VERSION=$ENTRY_VER
  fi
done

if [ -z "$DOTFILES_VERSION" ]
then
	DOTFILES_VERSION=0
fi

while [ "$DOTFILES_VERSION" -lt "$VERSION" ]
do 
	echo "Migrating from Version $DOTFILES_VERSION to Version $VERSION"
	DOTFILES_VERSION=$((DOTFILES_VERSION + 1)) && \
	sh ~/.dotfiles/bin/migrations/$DOTFILES_VERSION.sh && \
	echo "Done!"
done
