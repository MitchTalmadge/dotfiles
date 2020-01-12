# This profile is inherited by all bourne shells.

# Inherit all .profile
. ~/.dotfiles/shells/all/.profile

# Amends
echo "> Executing sh/.profile"

# Try to upgrade the default shell to preferred shell.
export CURR_SHELL=$SHELL
echo "** DEFAULT SHELL: $CURR_SHELL **"
# Make sure to only switch shells on interactive sessions
case $- in *i*)
  # Try to switch to zsh
  if test "$CURR_SHELL" = "`command -v zsh`"; then
    return;
  else
    NEW_SHELL=`command -v zsh`
    if [ -x "$NEW_SHELL" ]; then
      echo "> Upgrading to $NEW_SHELL"
      export SHELL="$NEW_SHELL"
      exec "$NEW_SHELL" -l
    fi
  fi
    
  # Try to switch to bash
  if test "$CURR_SHELL" = "`command -v bash`"; then
    return;
  else
    NEW_SHELL=`command -v bash`
    if [ -x "$NEW_SHELL" ]; then
      echo "> Upgrading to $NEW_SHELL"
      export SHELL="$NEW_SHELL"
      exec "$NEW_SHELL" -l
    fi
  fi
esac

AMEND=~/.dotfiles/shells/amends/sh/.profile && test -f $AMEND && source $AMEND
