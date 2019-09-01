#!/bin/sh

# Shells
# ------------------------------------

# csh
cp ~/.login ~/.dotfiles/backups/ || true
ln -sf ~/.dotfiles/shells/csh/.login  ~/.login
cp ~/.cshrc ~/.dotfiles/backups/ || true
ln -sf ~/.dotfiles/shells/csh/.cshrc ~/.cshrc

# tcsh
cp ~/.tcshrc ~/.dotfiles/backups/ || true
ln -sf ~/.dotfiles/shells/tcsh/.tcshrc ~/.tcshrc

# sh/bourne
cp ~/.profile ~/.dotfiles/backups/ || true

ln -sf ~/.dotfiles/shells/sh/.profile ~/.profile

# bash
cp ~/.bash_profile ~/.dotfiles/backups/ || true
ln -sf ~/.dotfiles/shells/bash/.bash_profile ~/.bash_profile
cp ~/.bashrc ~/.dotfiles/backups/ || true
ln -sf ~/.dotfiles/shells/bash/.bashrc ~/.bashrc

# zsh
cp ~/.zprofile ~/.dotfiles/backups/ || true
ln -sf ~/.dotfiles/shells/zsh/.zprofile ~/.zprofile
cp ~/.zshrc ~/.dotfiles/backups/ || true
ln -sf ~/.dotfiles/shells/zsh/.zshrc ~/.zshrc

# Tools
# ------------------------------------

# tmux
cp ~/.tmux.conf ~/.dotfiles/backups/ || true
ln -sf ~/.dotfiles/tools/tmux/.tmux.conf ~/.tmux.conf
