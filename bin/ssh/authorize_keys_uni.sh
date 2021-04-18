#!/bin/bash
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
echo -e "\n# mitch.talmadge@utah.edu\nssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAn5Lqz41W9WSG4BzJUzHwkuo9Lsyy/jC0wqZGxjPShVu2NtW97UAY9thNcFfyFjyVcc/IbNcbj+JJbktWNUj51q0vrIfHOKSANX/9UVmoimwZ5gmDlh2ybPzXnon2k+6P0rghxayZpKOfcsFQh6MiOhVbtRDIP1HtDARDTzVuuMlTPqdyS7xyye2cUy+e5gSagPurYNm+vG5uwjOOQQ85t26Uz69B58PbNn4fkhwATw3moOmKFtpInYe2vw8zCJdQXeOPVmtdeISpAFWCIale58a8gyzEdeY8j7KSfknYkdPOISEuxMqYVFEcD9yHjcHRSxuYWEAtnfeCYuW31RPL9w== mitch.talmadge@utah.edu" >> ~/.ssh/authorized_keys
echo "Wrote key mitch.talmadge@utah.edu to authorized_keys."
