#!/bin/sh
set +o xtrace

echo " -------- Migrations -------- "
# Determine versions
HEAD_VERSION=`~/.dotfiles/bin/migrations/version.sh`
LOCAL_VERSION=0
if [ -f ~/.dotfiles/bin/migrations/local_version ]; then
	LOCAL_VERSION=`cat ~/.dotfiles/bin/migrations/local_version`
fi

echo " > Local Version: $LOCAL_VERSION"
echo " > Head Version: $HEAD_VERSION"

# Perform migrations
while [ $LOCAL_VERSION -lt $HEAD_VERSION ]
do 
	LOCAL_VERSION=$((LOCAL_VERSION + 1)) && \
	echo " * Running Migration $LOCAL_VERSION ..."	
	sh ~/.dotfiles/bin/migrations/$LOCAL_VERSION.sh
	echo " ** Complete."
done

# Save latest version
echo $HEAD_VERSION > ~/.dotfiles/bin/migrations/local_version
echo " All Migrations Complete."
echo " ----------------------------"
