#!/bin/bash

TARGET_DIR="/var/log"

DAYS=7

DRY_RUN="false"

if [ "$DRY_RUN" = "true" ]; then
	echo "Dry run mode - files to be deleted:"
	find "$TARGET_DIR" -type f -name "*.log" -mtime +$DAYS
else
	echo "Deleting log files older than $DAYS days in $TARGET_DIR"
	find "$TARGET_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;
	echo "Log cleanup completed."
fi
