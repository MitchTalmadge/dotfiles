#!/bin/bash

echo "Updating iTerm2 shell integration scripts..."
SHELLS=(bash fish tcsh zsh)
for SHELL in ${SHELLS[@]}; do
  echo "Downloading for ${SHELL}..."
  wget https://iterm2.com/shell_integration/${SHELL} -O ~/.dotfiles/shells/${SHELL}/iterm2_shell_integration.${SHELL}
done

echo "Done."