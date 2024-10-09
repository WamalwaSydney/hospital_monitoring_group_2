#!/bin/bash
# Prompt for device name
echo "Enter the device name:"
read device_name
# Log file
log_file="heart_rate_log.txt"
# Function to simulate heart rate
generate_heart_rate() {
    echo $((RANDOM % 40 + 60))  # Random heart rate between 60-99
}
# Infinite loop to log heart rate every second
while true; do
    # Get current timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    
    # Get simulated heart rate
    heart_rate=$(generate_heart_rate)
    
    # Write to log file
    echo "$timestamp $device_name $heart_rate" >> $log_file
    
    # Sleep for 1 second
    sleep 1
done &
# Output the PID of the process
echo "Heart rate monitoring started with PID: $!"
