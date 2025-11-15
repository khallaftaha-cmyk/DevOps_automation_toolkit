#!/bin/bash

# Automaticlly adds,  commmits, and pushes to GitHub

# Navigate to the repo folder (optional)
# cd /path/to/your/repo#

# Add all changes
git add .

# Commit with timestamp
git commit -m "Auto-backup: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to remote
git push origin main 

echo "Backup completed at $(date)"
