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

# Try to switch to tcsh
set NEW_SHELL="`command -v tcsh`"
if ("$NEW_SHELL" != "") then
  echo "** SHELL: TCSH **"
  setenv SHELL "$NEW_SHELL"
  exec "$SHELL" # Don't use login or a loop will occur.
endif

# Use default csh
echo "** SHELL: CSH **"
