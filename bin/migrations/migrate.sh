#!/bin/sh
set +o xtrace

echoi " -------- Migrations -------- "
# Determine versions
HEAD_VERSION=`sh ~/.dotfiles/bin/migrations/version.sh`
LOCAL_VERSION=0
if [ -f ~/.dotfiles/bin/migrations/local_version ]; then
	LOCAL_VERSION=`cat ~/.dotfiles/bin/migrations/local_version`
fi

echoi " > Local Version: $LOCAL_VERSION"
echoi " > Head Version: $HEAD_VERSION"

# Perform migrations
while [ $LOCAL_VERSION -lt $HEAD_VERSION ]
do 
	LOCAL_VERSION=$((LOCAL_VERSION + 1)) && \
	echoi " * Running Migration $LOCAL_VERSION ..."	
	sh ~/.dotfiles/bin/migrations/$LOCAL_VERSION.sh
	echoi " ** Complete."
done

# Save latest version
echo $HEAD_VERSION > ~/.dotfiles/bin/migrations/local_version
echoi " All Migrations Complete."
echoi " ----------------------------"
