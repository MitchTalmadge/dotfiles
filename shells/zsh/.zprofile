# Inherit sh .profile
. ~/.dotfiles/shells/sh/.profile

echo "> Executing zsh/.zprofile"

# zsh specific environment variables
# TODO: Placeholder

# Amends
AMEND=~/.dotfiles/shells/amends/zsh/.zprofile && test -f $AMEND && source $AMEND
