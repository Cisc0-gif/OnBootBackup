#! /bin/bash

datetime=$(date)
num=$(shuf -i0-9999 -n1)
user=USERNAMEHERE

sudo tar -zcf /var/backups/$user_BU_$num.tar.gz /home/$user
echo $datetime -- $user_BU_$num.tar.gz | sudo tee -a /home/$user/.backup.log
sudo find /var/backups -name "$user_BU_*.tar.gz" -type f -mtime +2 -exec sudo shred -f {} \;
sudo find /var/backups -name "$user_BU_*.tar.gz" -type f -mtime +2 -exec rm -f {} \;
