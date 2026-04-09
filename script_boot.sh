#  makes a directory called proyecto
mkdir proyecto 

#  changes directory to proyecto as a relative root
cd proyecto/ 

#  returns to the absolute root
cd .. 

#  Changes the directory to /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto as an absolute root
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto 


# ruta absoluta: empieza con /


# Ways to enter to home directory

# Changes directory 
cd

# Changes directory to home
cd ~

# Using an absolute root, the directory is changed to home
cd /home/codespace

# Shows the home directory of the current user
echo $HOME

# Displays the bash play executable thats being used
echo $BASH

#S hows the PATH variable, which is a list of directories where Linux looks for executable programs when you type a comman
echo $PATH


git checkout branch name #is used to switch to another branch in your Git repository.
#An absolute route (or absolute path) is the full path to a file or directory starting from the root of the file system, no matter where you currently are.
#A relative path (or relative route) is a path that is defined based on your current location (current directory), not from the root.

mkdir proyecto # Creates a new directory (folder) named "proyecto"

ls # Lists the files and directories in the current folder

cd proyecto/ # Moves into the "proyecto" directory

cd .. # Goes up one level to the parent directory

cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto # Moves to this directory using an absolute path (from the root)

cd #change directory to home directory

pwd # Prints the current working directory (shows where you are)

cd / # Changes directory to the root folder (/) 
#it does not matter what directory you are in, if u put cd it will move you into that

cd /workspaces/   # Changes directory to the /workspaces folder using an absolute path
# this ~ identifies the home directory

cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/   # Changes directory to this specific project folder using an absolute path

cd /home/codespace/   # Changes directory to the codespace user's home directory using an absolute path
#Environment variables are values stored in the operating system that programs can use to configure their behavior.
#the most basic thing you can do is write something in one archive and make another one read it

echo $HOME   # Prints the user's home directory path (environment variable)

echo $BASH   # Prints the path to the Bash shell executable

echo $PATH   # Prints the list of directories where the system looks for executable commands

cd /usr/local   # Changes directory to /usr/local, a system folder where locally installed software is stored

ls -lai  or ls -l -a -i # Lists all files (including hidden ones) in long format, shows inode numbers, and displays detailed info like permissions, owner, size, and modification date

man ls   # Opens the manual page for the "ls" command, showing detailed documentation, options, and usage examples

ls --all   # Lists all files in the directory, including hidden files (those starting with .) these directories are hard links

cd /workspaces   # Changes directory to the /workspaces folder

cd /bin          # Changes directory to /bin, which contains essential system binaries (commands)

ls -a            # Lists all files, including hidden files (starting with .)

ls -all          # Same idea as detailed listing; in most systems this is equivalent to "ls -l -a" or may not be valid as a separate option (correct form is usually "ls -la")
# . means actual directory, while .. represents the parent directory

.                # Represents the current directory — the folder you are currently in.

..               # Represents the parent directory — the folder one level above the current directory.

# stat .
File: .
  Size: 4096            Blocks: 8          IO Block: 4096   directory
Device: 7,4     Inode: 1572941     Links: 2
 # Device: 7,4 = indicates the device where the file or directory is stored.

 #POSIX (Portable Operating System Interface) is a set of standards that defines how operating systems should work, especially Unix-like systems (Linux, macOS, etc.).

pwd                  # Prints the current working directory (where you are in the filesystem)
whoami               # Shows the current logged-in username
ls -lt               # Lists files in long format, sorted by time (newest first) in this case it shows 0 because we don't have anythign created yet
ls /etc | head -20   # Lists files in /etc and shows the first 20 lines (top entries)
ls /dev | tail -20   # Lists files in /dev and shows the last 20 lines (bottom entries)

