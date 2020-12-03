#!/bin/sh
. ~/.dotfiles/bin/migrations/.migrate-utils

# SSH Authorized Keys
mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCT1POh3gKQ1mK6JscJ0HW6krJnzFcU34M5iEOwHJZ/BeCIj+JkjAb65cdz6+1xkpO24jkPgTAuHTj3yrfJ6a4DFjd0AI+za4HMJyA/VaJjzxww92dM3mlYnmPNYcAbE1i1j/kh1jKnOtwnl4JYA1PmQ/o5NDEkI43C1zhnqT+osQ== MitchTalmadge.com" >> ~/.ssh/authorized_keys
