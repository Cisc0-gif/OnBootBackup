#! /bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

printf "${BLUE}[*] Setting up OnBootBackup...${NC}\n"
sudo mv backup.sh /var/backups
sudo crontab -l | { cat; echo "@reboot sudo bash /var/backups/backup.sh"; } | sudo crontab -
printf "${GREEN}[+] Done!\nRefer to /home/USER/.bacup.log for backup files and their timestamps${NC}\n"
printf "${RED}[!] WARNING: Backups are deleted after 2 days! You can change this in /var/backups/backup.sh!${NC}\n"
