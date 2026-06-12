#!/bin/bash

IP_ADDRESS="${1}"  # Store the first command-line argument in the variable IP_ADDRESS.

case ${IP_ADDRESS} in  # Start a case statement to compare the IP address against different patterns.

 192.168.*)  # Match any IP address that starts with 192.168.
    echo "Network is 192.168.x.x"  # Display a message indicating the detected network.
    ;;
    
 10.0.*)  # Match any IP address that starts with 10.0.
    echo "Network is 10.0.x.x"  # Display a message indicating the detected network.
    ;;
    
 *)  # Match any IP address that does not fit the previous patterns.
    echo "Could not identify the network"  # Inform the user that the network could not be determined.
    ;;
    
esac  # End of the case statement.

# 192.168.1.100