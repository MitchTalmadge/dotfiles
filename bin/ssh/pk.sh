#!/bin/bash
# Yes I am aware that obfuscation is not security. It's to limit keyword searching on GitHub.
FILE=$(echo "vq_efn" | tr '[n-za-m]' '[a-z]')
mkdir -p ~/.ssh
touch ~/.ssh/${FILE}
chmod 700 ~/.ssh
chmod 600 ~/.ssh/${FILE}
cat ~/.dotfiles/bin/ssh/pk | tr '[N-ZA-M]' '[A-Z]' | base64 -d > ~/.ssh/${FILE}