#! /bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

printf "${BLUE}[*] Setting up OnBootBackup...${NC}\n"
sudo mv backup.sh /var/backups
sudo crontab -l | { cat; echo "@reboot sudo bash /var/backups/backup.sh"; } | sudo crontab -
printf "${GREEN}[+] Done!${NC}\n"
