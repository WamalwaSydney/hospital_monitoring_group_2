# Data handling and monitoring with Linux in the Hospital

## Live Coding Summative

This is a group assignment and its intent is to develop three shell scripts that are part of a system infrastructure update by a hospital to optimize data handling and improve patient monitoring. These scripts will manage the tasks of recording heart data, archiving logs, and securely backing the logs up to a remote server for future access. 

### Setup Instructions

1. Clone the repository to your local machine.
2. Navigate to the project directory where the scripts are located.
3. Run the scripts in the following order.


### Task 1: Heart Rate Monitoring Script

Overview:

This script simulates a heart rate monitor by continuously recording heart rate data every second. It prompts the user to enter a device name (e.g., Monitor_A, Monitor_B, etc.) and logs the following information in a file called `heart_rate_log.txt`

- Timestamp (current date and time)
- Device name (as provided by the user)
- Simulated heart rate (a random value between 60 and 99)

The script runs in the background and outputs the process ID (PID) to allow for management of the background process.

To run the script: use `./heart_rate_monitor.sh` &
the script will prompt you for a device name, start logging heart rate data, and run in the background.

Once the script is running, you can view the process ID (PID) on the terminal. 

To monitor the heart rate log in real-time, use:

`tail -f heart_rate_log.txt`  

The heart rate will be logged with a timestamp and device name every second in the format:

2024-10-03 14:35:02 Monitor_A 61  
2024-10-03 14:35:03 Monitor_A 67  
2024-10-03 14:35:04 Monitor_A 48  


To stop the heart rate monitoring script, use the kill command followed by the PID provided when the script was started:

`kill <PID>`

### Task 2: Log Archival Script

Overview:  
This script archives the heart rate log file (`heart_rate_log.txt`) by renaming it with a timestamp. The new file name follows the format *heart_rate_log.txt_YYYYMMDD_HHMMSS*, where:

YYYYMMDD is the current year, month, and day.
HHMMSS is the current hour, minute, and second.

After archiving, the original heart_rate_log.txt is renamed, allowing the logging process to start fresh.

The renamed archive file retains all previously recorded heart rate data.

Prerequisites  
Ensure you have already generated heart_rate_log.txt from Task 1.


To run the script: execute

`./archive_log.sh`  

Once executed, the script will rename heart_rate_log.txt with a timestamp and display the new archived log file name:


`Log archived as heart_rate_log.txt_20241003_143501`

You can verify that the log file has been renamed by listing the files in the directory:

`ls`  
You should see something like:

`heart_rate_log.txt_20241003_143501`

### Task 3: Archival and Backup Script

Overview:  
This script moves the archived log files into a designated directory called `archived_logs_group2` 
and backs up the archived files to a remote server using SSH. We were required to use one of our group member's sandbox as a server for backup and use connection details.

Prerequisites   
Ensure you have already generated archived log files from Task 2.  

To run the script execute:

`./backup_archives.sh`

After moving the archived files to the designated directory the script wil display the following message:  

`Log files have been moved to the archive directory!`  

Once files are moved, the script backs up the entire archive directory to a remote server using the scp command via SSH and display the message:  

`Archived files backed up to remote server!`  



**Team attendance**  

Sydney Erik Wamalwa  
Josiane MUKESHIMANA  
Esther Mushimiyimana  
Atete Mpeta Shina  
Rachel Toronga  
Mahlet Assefa Tilahun  

All group members were present and worked on different parts of the project by holding sessions over Google Meet.

