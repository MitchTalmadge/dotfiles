# This file is like .login/.profile/.zprofile/... and is inherited by all shells.
echo "> Executing all .profile"

# Set environment variables
(test $SHELL = "`command -v tcsh`" || test $SHELL = "`command -v csh`") || eval 'setenv() { export "$1=$2"; }'

setenv DOTFILES_VERSION "`cat ~/.dotfiles/bin/migrations/current_version`"
setenv PATH "$PATH:~/bin/"

# Amends
(test $SHELL = "`command -v tcsh`" || test $SHELL = "`command -v csh`") && \
  eval 'set AMEND=~/.dotfiles/shells/amends/all/.profile && test -f $AMEND && source $AMEND' || \
  eval 'AMEND=~/.dotfiles/shells/amends/all/.profile && test -f $AMEND && source $AMEND'
