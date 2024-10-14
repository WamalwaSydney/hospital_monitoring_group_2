#!/bin/bash
# This script renames the log file with a timestamp

# Original log file
log_file="heart_rate_log.txt"

# Timestamp format
timestamp=$(date '+%Y%m%d_%H%M%S')

# Archive file name
archive_file="${log_file}_${timestamp}"

# Rename the log file to archive it
mv $log_file $archive_file

# Confirmation message
echo "Log archived as $archive_file"
