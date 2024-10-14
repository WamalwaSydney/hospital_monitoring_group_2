#!/bin/bash

#Create the archive directory
mkdir -p archived_logs_group2

#Move the acrchived log files to the designated directory

mv heart_rate_log.txt_* archived_logs_group2/

echo "Log files have been moved to the archived_logs_group2 directory!"

#Enter remote backup details

remote_host=""
remote_user=""
remote_dir="/home/"


#Backup files to remote server using SCP

scp archived_logs_group2/* "$remote_user@$remote_host:$remote_dir"

#Confirm backup
echo "Archived logs moved and backed up to remote server!"
