#!/bin/sh
. ~/.dotfiles/bin/utils/log
set +o xtrace

df_log " -------- Migrations -------- "
# Determine versions
HEAD_VERSION=`sh ~/.dotfiles/bin/migrations/version.sh`
LOCAL_VERSION=0
if [ -f ~/.dotfiles/bin/migrations/local_version ]; then
	LOCAL_VERSION=`cat ~/.dotfiles/bin/migrations/local_version`
fi

df_log " > Local Version: $LOCAL_VERSION"
df_log " > Head Version: $HEAD_VERSION"

# Perform migrations
while [ $LOCAL_VERSION -lt $HEAD_VERSION ]
do 
	LOCAL_VERSION=$((LOCAL_VERSION + 1)) && \
	df_log " * Running Migration $LOCAL_VERSION ..."	
	sh ~/.dotfiles/bin/migrations/$LOCAL_VERSION.sh
	df_log " ** Complete."
done

# Save latest version
echo $HEAD_VERSION > ~/.dotfiles/bin/migrations/local_version
df_log " All Migrations Complete."
df_log " ----------------------------"
