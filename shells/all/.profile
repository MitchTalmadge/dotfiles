. ~/.dotfiles/bin/utils/echo

# This file is like .login/.profile/.zprofile/... and is inherited by all shells.
echoi "> Executing all/.profile"

# Set environment variables
(echo $0 | grep -q "tcsh" || echo $0 | grep -q "csh") || eval 'setenv() { export "$1=$2"; }'

setenv EDITOR "nvim"
setenv SUDO_EDITOR "nvim"
setenv PATH "$HOME/usr/bin:$HOME/usr/local/bin:$HOME/.dotfiles/usr/bin:$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin:/home/linuxbrew/.linuxbrew/bin:/usr/local/bin:/snap/bin:$PATH"
setenv PKG_CONFIG_PATH "$HOME/usr/local/lib/pkgconfig:$HOME/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH"
setenv LD_LIBRARY_PATH "$HOME/usr/local/lib:$HOME/usr/local/lib64:/usr/lib:/usr/lib64:/usr/local/lib:/usr/local/lib64:$LD_LIBRARY_PATH"
setenv GCC_COLORS "error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

# Check for updates
setenv DOTFILES_INTERACTIVE $([[ $- == *i* ]] && echo "true" || echo "false")
sh ~/.dotfiles/bin/auto-update.sh
setenv DOTFILES_UPDATED "true"

# Amends
(echo $0 | grep -q "tcsh" || echo $0 | grep -q "csh") && \
  (eval 'set AMEND=~/.dotfiles/shells/amends/all/.profile && test -f $AMEND && source $AMEND' || true) || \
  (eval 'AMEND=~/.dotfiles/shells/amends/all/.profile && test -f $AMEND && source $AMEND' || true)
