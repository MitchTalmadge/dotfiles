#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils.sh

# Make sure we have usr/local/bin in our home path
mkdir -p ~/usr/local/bin

# Install starship
BIN_PATH=$(cd ~/usr/local/bin && pwd)
curl -fsSL https://starship.rs/install.sh | bash -s -- --bin-dir $BIN_PATH --yes