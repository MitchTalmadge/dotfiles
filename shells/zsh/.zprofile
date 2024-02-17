# Inherit sh .profile
. ~/.dotfiles/shells/sh/.profile

echoi "> Executing zsh/.zprofile"

# zsh specific environment variables
# TODO: Placeholder

# Amends
AMEND=~/.dotfiles/shells/amends/zsh/.zprofile && test -f $AMEND && source $AMEND

#eval "$(starship init zsh)"