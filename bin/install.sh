#!/bin/bash

echo "Installing..."
/bin/bash migrations/migrate.sh && \
echo "Complete! Restart your shell to apply changes." || \
echo "Failed to install."
