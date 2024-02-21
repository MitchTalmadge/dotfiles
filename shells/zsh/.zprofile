# Inherit sh .profile
. ~/.dotfiles/shells/sh/.profile

df_log "> Executing zsh/.zprofile"

# Amends
AMEND=~/.dotfiles/shells/amends/zsh/.zprofile && test -f $AMEND && source $AMEND

#eval "$(starship init zsh)"