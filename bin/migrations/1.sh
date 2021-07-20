#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# Shells
# ------------------------------------

# csh
backup_and_link ~/.dotfiles/shells/csh/.login ~/.login
backup_and_link ~/.dotfiles/shells/csh/.cshrc ~/.cshrc

# tcsh
backup_and_link ~/.dotfiles/shells/tcsh/.tcshrc ~/.tcshrc

# sh/bourne
backup_and_link ~/.dotfiles/shells/sh/.profile ~/.profile

# bash
backup_and_link ~/.dotfiles/shells/bash/.bash_profile ~/.bash_profile
backup_and_link ~/.dotfiles/shells/bash/.bashrc ~/.bashrc

# zsh
backup_and_link ~/.dotfiles/shells/zsh/.zprofile ~/.zprofile
backup_and_link ~/.dotfiles/shells/zsh/.zshrc ~/.zshrc

# Tools
# ------------------------------------

# tmux
backup_and_link ~/.dotfiles/tools/tmux/.tmux.conf ~/.tmux.conf
