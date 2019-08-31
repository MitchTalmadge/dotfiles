# This profile is inherited by all bourne shells.

# Tries to upgrade the default shell to preferred shell.
upgrade_shell() {
  # Make sure to only switch shells on interactive sessions
  case $- in *i*)
    # Try to switch to zsh
    if test "$SHELL" = "`command -v zsh`"; then
      return;
    else
      NEW_SHELL=`command -v zsh`
      if [ -x "$NEW_SHELL" ]; then
        echo "** SHELL: $NEW_SHELL **"
        export SHELL="$NEW_SHELL"
        exec "$NEW_SHELL" -l
      fi
    fi
    
    # Try to switch to bash
    if test "$SHELL" = "`command -v bash`"; then
      return;
    else
      NEW_SHELL=`command -v bash`
      if [ -x "$NEW_SHELL" ]; then
	echo "** SHELL: $NEW_SHELL **"
        export SHELL="$NEW_SHELL"
        exec "$NEW_SHELL" -l
      fi
    fi

    # Use default shell
    echo "** SHELL: $SHELL **"
  esac
}
upgrade_shell

# Inherit all .profile
. ~/.dotfiles/shells/all/.profile
