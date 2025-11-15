#!/bin/bash

#WATCH_DIR="/home/khallaf/devops-automation-toolkit"

inotifywait -m -r -e modify,create,delete --format '%w%f' "$WATCH_DIR" |while read FILE 
do
	echo "Detected change in $FILE"

	git -C "$WATCH_DIR" add .
	git -C "$WATCH_DIR" commit -m "Auto commit: $(date '+%Y-%m-%d %H:%M:%S') - $FILE"
	git -C "$WATCH_DIR" push origin main

	echo "Auto-commit completed for $FILE"
done
