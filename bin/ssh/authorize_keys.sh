#!/bin/bash
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
echo -e "\n# mitch@talmad.ge\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCT1POh3gKQ1mK6JscJ0HW6krJnzFcU34M5iEOwHJZ/BeCIj+JkjAb65cdz6+1xkpO24jkPgTAuHTj3yrfJ6a4DFjd0AI+za4HMJyA/VaJjzxww92dM3mlYnmPNYcAbE1i1j/kh1jKnOtwnl4JYA1PmQ/o5NDEkI43C1zhnqT+osQ== mitch@talmad.ge" >> ~/.ssh/authorized_keys
echo "Wrote key mitch@talmad.ge to authorized_keys."
echo -e "\n# mitch@talmad.ge dotfiles\nssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAjhIgI//0COPwiBjQx5QcUwwb3J+LKiDOf1lx3tGATptLgnj0fEgE/e3dc9KGjrBfNeCf+5LjNoyag6MKbfTgf+4p1YHZeJDpjyGA339YxWYnbd2Ip154Xh1QbcmErsr5owbEC4phPK0UY1FTsJ3Md/NZPTRNu/sqdj/6xF8TSquW4WriIUQenbBanGSyDng9RAe6yVA08+UeLPhfphlZI7f+pZ/BzZ+aFTfC1aA8j/F0iuijHYAZb5vrpczthOITdPjlMYWdMV+4rmzrcSeZ9uiWj38uMsHeBlsH2vEmPGo+X/KQAskDN4+NNwBFcn5/EhZJ+sSjUUa/0LKsaxVp/Q== mitch@talmad.ge dotfiles" >> ~/.ssh/authorized_keys
echo "Wrote key mitch@talmad.ge dotfiles to authorized_keys."
