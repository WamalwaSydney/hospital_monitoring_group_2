#!/bin/bash

# Log file
log_file="heart_rate_log.txt"

# Check if log file exists
if [[ ! -f "$log_file" ]]; then
    echo "Log file does not exist."
    exit 1
fi

# Generate timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Archive the log file
mv "$log_file" "${log_file}_${timestamp}"
echo "Archived log file to ${log_file}_${timestamp}"
