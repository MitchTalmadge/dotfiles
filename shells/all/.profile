# This file is like .login/.profile/.zprofile/... and is inherited by all shells.
echo "> Executing all .profile"

# Set environment variables
(echo $0 | grep -q "tcsh" || echo $0 | grep -q "csh") || eval 'setenv() { export "$1=$2"; }'

setenv DOTFILES_VERSION "`cat ~/.dotfiles/bin/migrations/current_version`"
setenv PATH "$HOME/bin:/usr/local/bin:$PATH"

setenv GCC_COLORS "error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

# Amends
(echo $0 | grep -q "tcsh" || echo $0 | grep -q "csh") && \
  (eval 'set AMEND=~/.dotfiles/shells/amends/all/.allrc && test -f $AMEND && source $AMEND' || true) || \
  (eval 'AMEND=~/.dotfiles/shells/amends/all/.allrc && test -f $AMEND && source $AMEND' || true)
