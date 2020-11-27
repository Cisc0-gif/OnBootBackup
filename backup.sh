#! /bin/bash

datetime=$(date)
num=$(shuf -i0-9999 -n1)
user=USERNAMEHERE

sudo tar -zcf /var/backups/$user_BU_$num.tgz /home/$user
echo $datetime -- $user_BU_$num.tgz | sudo tee -a /home/$user/.backup.log
sudo find /var/backups -name "$user_BU_*.tgz" -type f -mtime +2 -exec sudo shred -f {} \;
sudo find /var/backups -name "$user_BU_*.tgz" -type f -mtime +2 -exec rm -f {} \;
