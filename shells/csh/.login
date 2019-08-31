if ($?prompt) then
  # Try to switch to zsh
  set NEW_SHELL="`command -v zsh`"
  if ("$NEW_SHELL" != "") then
    echo "** SHELL: $NEW_SHELL **"
    setenv SHELL "$NEW_SHELL"
    exec "$SHELL" -l
  endif

  # Try to switch to bash
  set NEW_SHELL="`command -v bash`"
  if ("$NEW_SHELL" != "") then
    echo "** SHELL: $NEW_SHELL **"
    setenv SHELL "$NEW_SHELL"
    exec "$SHELL" -l
  endif

  # Only try switching to tcsh if it is not already running.
  if ("$SHELL" != "`command -v tcsh`") {

    # Try to switch to tcsh.
    set NEW_SHELL="`command -v tcsh`"
    if ("$NEW_SHELL" != "") then
      echo "** SHELL: $NEW_SHELL **"
      setenv SHELL "$NEW_SHELL"
      exec "$SHELL" -l
    else
      # Fallback to default.
      echo "** SHELL: $SHELL **"
    endif
  endif
else
  echo "** SHELL: $SHELL NON-INTERACTIVE **"
endif

# Inherit all .profile
. ~/.dotfiles/shells/all/.profile

# csh/tcsh specific environment variables
# TODO: Placeholder
