# DevOps Automation Toolkit

A collection of simple but powerful automation scripts designed for beginners learning **DevOps**, **Linux**, **Bash scripting**, and **Git**.

This toolkit is fully written in Bash and contains useful tools for:
- System monitoring  
- Log management  
- Git automation  
- Encryption & decryption  
- Auto project creation  
- Auto commit & auto push  
- Backup utilities

Perfect for students preparing for DevOps roles or internships or anyone wanting to improve Linux automation skills.

## Project Structure 

devops-automation-toolkit/
- tools
  - auto-commit.sh
  - git-backup.sh
  - log-cleaner.sh
  - sys-info.sh
  - encrypt.sh
  - decrypt.sh
  - create-project.sh
  - website-status.sh
  -
- website_status.log
- app
- README.md


All scripts are standalone and work on any Linux system (Ubuntu recommended).


## Installation

Clone the repository:

```bash
git clone git@github.com:khallaftaha-cmyk/DevOps_automation_toolkit.git
cd devops-automation-toolkit

Make all scripts executable:

chmod +x *.sh

## tools 

1- auto-commit.sh

Automatically commits and pushes changes whenever files in the folder are modified.
Uses inotifywait.

Run:

./auto-commit.sh

2- log-cleaner.sh

Deletes log files older than 7 days.

Example:

./log-cleaner.sh


3- sys-info.sh

Displays system information.

Run:

./sys-info.sh

4- git-backup.sh

Creates a backup of a folder and pushes it to a Git repository.

Run:

./git-backup.sh myfolder

Backup will be saved as a .tar.gz file*.

5- website-status.sh

Checks if a website is UP or DOWN.

Run:

./website-status.sh

Outputs status code and uptime information.

6- encrypt.sh

Encrypts any file using openssl.

Run:

./encrypt.sh myfile.txt encrypted.dat

7 -decrypt.sh

Decrypts a file encrypted by encrypt.sh.

Run:

./decrypt.sh encrypted.dat decrypted.txt

8- create-project.sh

Creates a new project folder with:

README.md

src folder

scripts folder

virtual environment (optional)

Run:

./create-project.sh project-name

*Requirements

Some tools require extra packages:

sudo apt update
sudo apt install inotify-tools openssl curl

*Testing

Test each script:

./sys-info.sh
./log-cleaner.sh
./website-status.sh
./encrypt.sh test.txt secure.dat
./decrypt.sh secure.dat output.txt

## Contribute

Feel free to:

Add new automation scripts

Improve existing ones

Fix bugs

## License

This project is open-source and free for personal or educational use.

If this toolkit helps you, give it a star on GitHub!

