#!/bin/bash

# Checks if a website is up and logs the status

# Website URL
URL="https://www.google.com"

# Log file
LOG_FILE="./website_status.log"

# Get HTTP status code
STATUS=$(curl -o /dev/null -s -w "%{http_code}" %URL)

# Check and log
if [ "$STATUS" -eq 200 ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S') - $URL is UP" | tee -a $LOG_FILE
else
	echo "$(date '+%Y-%m-%d %H:%M:%S') - $URL is DOWN (Status: $STATUS)" | tee -a $LOG_FILE
fi
