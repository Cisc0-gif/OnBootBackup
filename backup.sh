#! /bin/bash

datetime=$(date)
num=$(shuf -i0-9999 -n1)
user=USERNAMEHERE
filename="$user_BU_$num.tar.gz"

sudo tar -zcf /var/backups/$filename /home/$user
echo $datetime -- $filename | sudo tee -a /home/$user/.backup.log
sudo find /var/backups -name "$user_BU_*" -type f -mtime +2 -delete
