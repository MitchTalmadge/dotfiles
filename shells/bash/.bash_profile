echo "> Executing .bash_profile"

# Inherit sh .profile
. ~/.dotfiles/shells/sh/.profile

# bash specific environment variables
# TODO: Placeholder

# Run .bashrc
. ~/.bashrc

# Amends
AMEND=~/.dotfiles/shells/amends/bash/.bash_profile && test -f $AMEND && source $AMEND

