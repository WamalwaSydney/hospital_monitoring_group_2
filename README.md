This is a group assignment and its intent is : A hospital has recently upgraded its system infrastructure to optimize data handling and improve patient monitoring. As part of this upgrade, the hospital requires a system to record heart rate data, archive logs, and securely back them up to a remote server for future access. In this assignment, you will develop three shell scripts to manage these tasks.

Task 1: Heart Rate Monitoring Script

Overview:

This script simulates a heart rate monitor by continuously recording heart rate data every second. It prompts the user to enter a device name (e.g., Monitor_A, Monitor_B, etc.) and logs the following information in a file called heart_rate_log.txt:

Timestamp (current date and time)
Device name (as provided by the user)
Simulated heart rate (a random value between 60 and 99)
The script runs in the background and outputs the process ID (PID) to allow for management of the background process.

Features
Accepts input for device name.
Logs heart rate data every second with a timestamp.
Simulates heart rate using random values.
Runs as a background process with a visible process ID.
Logs data into a file heart_rate_log.txt that can be monitored using the tail -f command.
Prerequisites
Ensure your system has a Bash shell available.

Setup Instructions
Clone the repository to your local machine.
Navigate to the project directory where the script is located.
Ensure the script is executable:
bash
Copy code
chmod +x heart_rate_monitor.sh
Usage
To run the script:

bash
Copy code
./heart_rate_monitor.sh &
The script will prompt you for a device name, start logging heart rate data, and run in the background.

Once the script is running, you can view the process ID (PID) on the terminal. You can use this PID to stop the process if needed:

bash
Copy code
kill <PID>
To monitor the heart rate log in real-time, use:

bash
Copy code
tail -f heart_rate_log.txt
The heart rate will be logged with a timestamp and device name every second in the format:

yaml
Copy code
2024-10-03 14:35:02 Monitor_A 61
2024-10-03 14:35:03 Monitor_A 67
2024-10-03 14:35:04 Monitor_A 48
Stopping the Script
To stop the heart rate monitoring script, use the kill command followed by the PID provided when the script was started:

bash
Copy code
kill <PID>
