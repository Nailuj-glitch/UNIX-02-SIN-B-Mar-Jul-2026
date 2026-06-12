#!/bin/bash

SIGNAL_TO_STOP_FILE="stoploop" # Stores the name of the file that will be used as the signal to stop the loop.

while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do # Starts a loop that continues running while the file does not exist.
    echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..." # Displays a message indicating that the file has not been found yet.
    echo "Checking again in 2 seconds..." # Informs the user that the script will check again after 2 seconds.
    sleep 2 # Pauses the script for 2 seconds before performing the next check.
done # Makes the end of the while loop

echo "File was found! Exiting..." # Prints a message indicating that the file was detected and the script is terminating.

