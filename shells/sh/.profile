# This profile is inherited by all bourne shells.

# Inherit all .profile
. ~/.dotfiles/shells/all/.profile

df_log "> Executing sh/.profile"

# function upgrade_shell() {
# 	# Try to upgrade the default shell to preferred shell.
# 	export CURR_SHELL=$SHELL
# 	df_log "** DEFAULT SHELL: $CURR_SHELL **"
# 	# Make sure to only switch shells on interactive sessions
# 	case $- in *i*)
# 	try_upgrade zsh || try_upgrade bash
# 	esac
# }

# function try_upgrade() {	
# 	if [ "$CURR_SHELL" != "`command -v $1`" ]; then
# 	  	df_log "> ** Looking for $1... **"
# 		NEW_SHELL=`command -v $1`
# 		if [ -x "$NEW_SHELL" ]; then
# 	  		df_log "> ** Upgrading to $NEW_SHELL **"
# 	  		export SHELL="$NEW_SHELL"
# 	  		exec "$NEW_SHELL" -l
# 		else
# 			df_log ">> ** Not found. **"
# 		fi
# 	else
# 		df_log "> ** Best shell selected. **"
# 		return 0
# 	fi
# 	return 1
# }

# upgrade_shell

# Amends
AMEND=~/.dotfiles/shells/amends/sh/.profile && test -f $AMEND && source $AMEND
. "$HOME/.cargo/env"
