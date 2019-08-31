if ($?prompt) then
  # Try to switch to zsh
  set NEW_SHELL="`command -v zsh`"
  if ("$NEW_SHELL" != "") then
    echo "** SHELL: ZSH **"
    setenv SHELL "$NEW_SHELL"
    exec "$SHELL" -l
  endif

  # Try to switch to bash
  set NEW_SHELL="`command -v bash`"
  if ("$NEW_SHELL" != "") then
    echo "** SHELL: BASH **"
    setenv SHELL "$NEW_SHELL"
    exec "$SHELL" -l
  endif

  # Only try switching to tcsh if it is not already running.
  if ("$SHELL" != "`command -v tcsh`") {

    # Try to switch to tcsh.
    set NEW_SHELL="`command -v tcsh`"
    if ("$NEW_SHELL" != "") then
      echo "** SHELL: TCSH **"
      setenv SHELL "$NEW_SHELL"
      exec "$SHELL" -l
    else
      # Fallback to default csh.
      echo "** SHELL: CSH **"
    endif
  endif
else
  echo "** SHELL: TCSH/CSH NON-INTERACTIVE **"
endif

# Set environment variables
. ~/.dotfiles/shells/all/.env_vars
