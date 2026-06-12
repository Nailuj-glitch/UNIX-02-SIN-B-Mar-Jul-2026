#!/bin/bash

FILE="output.txt" # Stores the name of the file that will be monitored.

touch "${FILE}" # Creates the file if it does not already exist.

until [[ -s "${FILE}" ]]; do # Starts a loop that continues until the file exists and contains data.

    echo "${FILE} is empty..."
    # Displays a message indicating that the file has no content.

    echo "Checking again in 2 seconds..."
    # Informs the user that another check will be performed shortly.

    sleep 2
    # Pauses execution for 2 seconds before the next check.

done # Marks the end of the until loop.

echo "${FILE} appears to have some content in it!" # Displays a message indicating that the file now contains data and the loop has finished.

