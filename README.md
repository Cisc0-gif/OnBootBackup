# OnBootBackup - Quick Setup For /home/USER Data Backups On Boot

With this super simple script your data will be backed up to a gzipped tar file in /var/backups and stored in case of accidental data loss. It will subsequently be deleted after a certain number of days (can be adjusted by changing the -mtime value in backup.sh)

## Getting Started

First, change the user=USERNAMEHERE var to your username.

Now run setup.sh with  ``` sudo ./setup.sh ``` and that's it! Your data will now be backed up!

## Built With

* shuf - built-in kali tool for RNG
* Kali Linux - Pentesting OS developed by Offensive Security
* GitHub - This Website!

## Authors

* **Cisc0-gif** - *Main Contributor/Author*: Ecorp7@protonmail.com

## License

This project is licensed under the MIT License - see the LICENSE file for details


## Acknowledgments

All credits are given to the authors and contributors to tools used in this software
