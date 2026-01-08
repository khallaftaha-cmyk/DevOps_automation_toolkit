# DevOps Automation Toolkit
![Bash](https://img.shields.io/badge/Bash-Scripting-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?style=for-the-badge&logo=git&logoColor=white)
![OpenSSL](https://img.shields.io/badge/OpenSSL-Security-721412?style=for-the-badge)
![DevOps](https://img.shields.io/badge/DevOps-Automation-0A0A0A?style=for-the-badge)

A collection of beginner-friendly but professional DevOps automation tools written in Bash.  
This toolkit helps automate common tasks such as Git backups, log cleanup, system monitoring, file encryption, and project creation.
Designed for Linux environments (Ubuntu recommended) and ideal for learning Git, Bash scripting, system automation, and workflow optimization.

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
  - git-backup.sh.swp
- website_status.log
- my-api
- README.md


---

## Tools

### 1. **git-backup.sh**
Automatically saves the current working directory into a timestamped backup folder and pushes it to GitHub.

### 2. **log-cleaner.sh**
Finds and deletes large or old log files (`*.log`) to free disk space.  
Can be configured to clean logs older than 7 days.

### 3. **website-status.sh**
Checks if a website is up or down using `curl` and prints an easy "UP/DOWN" message.

### 4. **auto-commit.sh**
Watches the repository for changes (using `inotifywait`) and automatically:
  - adds files  
  - commits  
  - pushes to GitHub  

Useful for DevOps automation workflows.

### 5. **sys-info.sh**
Displays system information such as:
- top processes
- memory usage  
- disk usage  
- CPU load 

### 6. **encrypt-decrypt.sh**
Encrypts or decrypts files using OpenSSL AES-256.  
Useful for securing sensitive configuration files.

### 7. **create-project.sh**
Automatically creates a ready-to-use project folder with:
- src directory  
- README   
- Git initialization  
- First commit  

---

## Requirements

These tools require a Linux environment with:

- Bash (default on Linux)
- Git
- curl
- inotify-tools (for `auto-commit.sh`)
- OpenSSL (for encryption & decryption)

Install missing packages: in the bash

* sudo apt update
* sudo apt install git curl inotify-tools openssl

## Installation

Clone the repository:

* git clone git@github.com:khallaftaha-cmyk/DevOps_automation_toolkit.git
* cd devops-automation-toolkit


## Make all scripts executable:

* chmod +x *.sh


* Run a tool:

  * ./sys-info.sh

* Usage Examples:

  * Auto-commit watcher: 
    * ./auto-commit.sh

  * Check a website
    * ./website-status.sh

  * Clean logs older than 7 days
    * ./log-cleaner.sh 

  * Backup project
    * ./git-backup.sh

  * Encrypt a file
    * ./encrypt-decrypt.sh encrypt secrets.txt

  * Create a new project
    * ./create-project.sh my-app

---

## Author

**Taha Khallaf**  
DevOps Engineer & Backend Developer

This toolkit was created to practice and demonstrate practical DevOps automation using Bash.
It focuses on simplifying repetitive operational tasks while reinforcing core concepts such as scripting, system observability, automation pipelines, and secure file handling.



