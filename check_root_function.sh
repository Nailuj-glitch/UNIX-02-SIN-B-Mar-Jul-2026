#!/bin/bash

#!/bin/bash

# Create a function that determines whether the current user has root privileges.
check_if_root() {

    # Check if the effective user ID (EUID) is equal to 0.
    # In Linux, an EUID value of 0 corresponds to the root user.
    if [[ "${EUID}" -eq 0 ]]; then # UID identifies the account owner, while EUID controls the permissions currently in use.

        # Return 0 to indicate the check was successful.
        return 0

    else

        # Return 1 to indicate the user does not have root privileges.
        return 1

    fi
}

# Run the function and inspect the returned status code.
if check_if_root; then

    # Print this message when the user is root.
    echo "User is root!"

else

    # Print this message when the user is not root.
    echo "User is not root!"

fi

adduser luna
su - luna

#!/bin/bash
while true; do
 echo "Looping..."
 sleep 2
done