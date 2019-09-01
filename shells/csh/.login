echo "> Executing csh .login"

echo "** CURRENT SHELL: $SHELL **"
if ($?prompt) then
  # Try to switch to zsh
  set NEW_SHELL="`command -v zsh`"
  if ("$NEW_SHELL" != "") then
    echo "> Upgrading to shell $NEW_SHELL"
    setenv SHELL "$NEW_SHELL"
    exec "$SHELL" -l
  endif

  # Try to switch to bash
  set NEW_SHELL="`command -v bash`"
  if ("$NEW_SHELL" != "") then
    echo "> Upgrading to shell $NEW_SHELL"
    setenv SHELL "$NEW_SHELL"
    exec "$SHELL" -l
  endif

  # Only try switching to tcsh if it is not already running.
  if ("$SHELL" != "`command -v tcsh`") {

    # Try to switch to tcsh.
    set NEW_SHELL="`command -v tcsh`"
    if ("$NEW_SHELL" != "") then
      echo "> Upgrading to shell $NEW_SHELL"
      setenv SHELL "$NEW_SHELL"
      exec "$SHELL" -l
    else
      # Fallback to default.
      echo "> Upgrading to shell $SHELL"
    endif
  endif
endif

# Inherit all .profile
source ~/.dotfiles/shells/all/.profile

# csh/tcsh specific environment variables
# TODO: Placeholder

# Amends
set AMEND=~/.dotfiles/shells/amends/csh/.login && test -f $AMEND && source $AMEND

