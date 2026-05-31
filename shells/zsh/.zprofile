# Inherit sh .profile
. ~/.dotfiles/shells/sh/.profile

df_log "> Executing zsh/.zprofile"

# Advertise 24-bit color when running in iTerm2 (it renders truecolor but
# doesn't export COLORTERM itself). Guarded so we don't falsely claim
# truecolor in subshells/consoles that aren't iTerm2.
if [ "$TERM_PROGRAM" = "iTerm.app" ]; then
  export COLORTERM=truecolor
fi

# Amends
AMEND=~/.dotfiles/shells/amends/zsh/.zprofile && test -f $AMEND && source $AMEND

#eval "$(starship init zsh)"