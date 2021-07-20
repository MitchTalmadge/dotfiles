# Creates a backup of a file, and then creates a symlink in its place.
# $1: The source
# $2: The destination
backup_and_link () {
  if [ -e $2 ]; then
    cp $2 ~/.dotfiles/backups/
  fi
  
  ln -sf $1 $2
}
