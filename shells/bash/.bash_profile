# Make sure to only switch shells on interactive sessions
case $- in *i*)
  # Try to switch to zsh
  NEW_SHELL=$(command -v zsh)
  if [ -x "$NEW_SHELL" ]; then
    echo "** SHELL: ZSH **"
    export SHELL="$NEW_SHELL"
    exec "$NEW_SHELL" -l
  fi

  # Use default bash
  echo "** SHELL: BASH **"
esac

if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi

