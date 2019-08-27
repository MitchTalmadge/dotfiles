# Make Symlinks
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases

# Set up profile files
echo "source ~/.dotfiles/.profile_extension" | tee -a ~/.profile ~/.bash_profile ~/.zprofile ~/.login
