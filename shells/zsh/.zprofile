echo "> Executing zprofile"

# Inherit sh .profile
. ~/.dotfiles/shells/sh/.profile

# zsh specific environment variables
# TODO: Placeholder

# Amends
AMEND=~/.dotfiles/shells/amends/zsh/.zprofile && test -f $AMEND && source $AMEND
