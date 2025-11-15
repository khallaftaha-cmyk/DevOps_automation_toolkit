#!/bin/bash

#WATCH_DIR="./"

echo "Watching directory: $WATCH_DIR"

inotifywait -m -r -e modify,create,delete --format '%w%f' "$WATCH_DIR" |while read FILE 
do
	echo "Detected change in: $FILE"

	git add .
	git commit -m "Auto commit: $(date '+%Y-%m-%d %H:%M:%S') - $FILE"
	git push origin main

	echo "Auto-commit completed for $FILE"
done
