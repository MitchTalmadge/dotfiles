#!/bin/sh

echo "Installing..."

# Migrations
sh migrations/migrate.sh && \

# Fonts
sh ../lib/powerline-fonts/install.sh && \

echo "Complete! Restart your shell to apply changes." || \
echo "Failed to install."
