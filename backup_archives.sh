#!/bin/bash

#Create the archive directory if it doesn't already exit.
mkdir -p archived_logs_group2

# Move timestamped log files into the designated directory

mv heart_rate_log.txt_* archived_logs_group2/

# Notify the user that the log files have been successfully moved

echo "Log files have been moved to the archived_logs_group2 directory!"

# Set up remote backup details

remote_host="5828ed452615.15cf1724.alu-cod.online"
remote_user="5828ed452615"
remote_dir="/home/"


#Backup files to remote server using SCP

scp archived_logs_group2/* "$remote_user@$remote_host:$remote_dir"

#Confirm backup
echo "Archived logs moved and backed up to remote server!"
