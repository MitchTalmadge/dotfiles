# Inherit sh .profile
. ~/.dotfiles/shells/sh/.profile

# bash specific environment variables
echo "> Executing bash/.bash_profile"

# TODO: Placeholder

# Run .bashrc
. ~/.bashrc

# Amends
AMEND=~/.dotfiles/shells/amends/bash/.bash_profile && test -f $AMEND && source $AMEND

