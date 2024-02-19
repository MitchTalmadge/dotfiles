# Inherit all .profile
source ~/.dotfiles/shells/all/.profile

echoi "> Executing csh/.login"

# echoi "** CURRENT SHELL: $SHELL **"
# if ($?prompt) then
#   # Try to switch to zsh
#   set NEW_SHELL="`command -v zsh`"
#   if ("$NEW_SHELL" != "") then
#     echoi "> Upgrading to shell $NEW_SHELL"
#     setenv SHELL "$NEW_SHELL"
#     exec "$SHELL" -l
#   endif
# 
#   # Try to switch to bash
#   set NEW_SHELL="`command -v bash`"
#   if ("$NEW_SHELL" != "") then
#     echoi "> Upgrading to shell $NEW_SHELL"
#     setenv SHELL "$NEW_SHELL"
#     exec "$SHELL" -l
#   endif
# 
#   # Only try switching to tcsh if it is not already running.
#   if ("$SHELL" != "`command -v tcsh`") {
# 
#     # Try to switch to tcsh.
#     set NEW_SHELL="`command -v tcsh`"
#     if ("$NEW_SHELL" != "") then
#       echoi "> Upgrading to shell $NEW_SHELL"
#       setenv SHELL "$NEW_SHELL"
#       exec "$SHELL" -l
#     else
#       # Fallback to default.
#       echoi "> Upgrading to shell $SHELL"
#     endif
#   endif
# endif

# csh/tcsh specific environment variables
# TODO: Placeholder

# If tcsch (not csh), integration with iTerm2
if ("$SHELL" == "`command -v tcsh`") then
  source ~/.dotfiles/shells/tcsh/iterm2_shell_integration.tcsh
endif

# Amends
set AMEND=~/.dotfiles/shells/amends/csh/.login && test -f $AMEND && source $AMEND

