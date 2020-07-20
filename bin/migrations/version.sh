#!/bin/sh

# Determine version from biggest migration name.
VERSION=0
for entry in `ls ~/.dotfiles/bin/migrations | grep -E "^[0-9]+\.sh$"`
do
  ENTRY_VER=`echo $entry | grep -oE "[0-9]+"`
  if [ "$ENTRY_VER" -gt "$VERSION" ]; then
    VERSION=$ENTRY_VER
  fi
done

echo $VERSION
