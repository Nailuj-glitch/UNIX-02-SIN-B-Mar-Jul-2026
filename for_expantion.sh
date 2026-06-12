#!/bin/bash

for file in example_file*; do  # Loop through all files whose names start with "example_file".

    if [[ "${file}" == "example_file1" ]]; then  # Check if the current file is "example_file1".

        echo "Skipping the first file"  # Display a message indicating that the first file is being skipped.

        continue  # Skip the rest of this iteration and move to the next file.
    fi

    echo "${RANDOM}" > "${file}"  # Write a random number into the current file, replacing its contents.

done  # End of the for loop.