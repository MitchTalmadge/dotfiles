# Shell Configurations

This directory quite obviously contains the config dotfiles for each shell.

Here is a diagram of how it all breaks down. 

## Key
- The green boxes represent the start of any given shell. Below them are numbers which indicate in which order the shells will source their configs. 
- The solid lines represent the path taken when logging into a shell (login only)
- The dot-dash lines represent the path taken when loading the general config of a shell (interactive and non-interactive).
- The blue boxes represent the directories in the repo.
- The yellow boxes are the config files themselves.
- The red dotted line shows the upgrade path, in which a shell will try to upgrade from (for example) csh to zsh/bash/tcsh in order of precedence. 
  - The red numbers represent which shell will be tried first, second, third, etc.
  
## Diagram

<img src="https://docs.google.com/drawings/d/e/2PACX-1vRVG_8M-9_2zCTIzEm8OnLNeDNQpVofwwVyjL3XQlk5qCkw6NvWYFOmus5FZQQeBQiaY0heWyYnUIqX/pub?w=1778&amp;h=1157">
