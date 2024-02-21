# Inherit .allrc
source ~/.dotfiles/shells/all/.allrc

df_log "> Executing csh/.cshrc"

# Amends
set AMEND=~/.dotfiles/shells/amends/csh/.cshrc && test -f $AMEND && source $AMEND
