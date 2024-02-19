# Inherit sh .profile
. ~/.dotfiles/shells/sh/.profile

# bash specific environment variables
echoi "> Executing bash/.bash_profile"

source ~/.dotfiles/shells/bash/iterm2_shell_integration.bash

# Run .bashrc
. ~/.bashrc

# Amends
AMEND=~/.dotfiles/shells/amends/bash/.bash_profile && test -f $AMEND && source $AMEND

