#!/bin/sh
set +o xtrace

# Determine versions
CURRENT_VERSION=`~/.dotfiles/bin/migrations/version.sh`
LOCAL_VERSION=0
if [ -f "~/.dotfiles/bin/migrations/local_version" ]; then
	LOCAL_VERSION=`cat ~/.dotfiles/bin/migrations/local_version`
fi

# Perform migrations
while [ "$LOCAL_VERSION" -lt "$CURRENT_VERSION" ]
do 
	echo "Migrating from Version $LOCAL_VERSION to Version $CURRENT_VERSION"
	LOCAL_VERSION=$((LOCAL_VERSION + 1)) && \
	sh ~/.dotfiles/bin/migrations/$LOCAL_VERSION.sh && \
	echo "Done!"
done

# Save latest version
echo $CURRENT_VERSION > ~/.dotfiles/bin/migrations/local_version
echo "Migrations complete."
