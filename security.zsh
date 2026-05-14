# umask 022: Configures the default mask so new files are created with 644 permissions.
umask 022

# touch archivo1: Generates an empty file called archivo1 using the active mask.
touch archivo1

# mkdir directory1: Creates a folder named directory1 using the current mask.
mkdir directory1

# ls -l: Displays files and folders with detailed information; here it was noticed that permissions were not following the umask because of ACLs in the directory.
ls -l




# umask 027: Changes the mask so new files have more restricted permissions for group and others.
umask 027

# touch archivo2: Creates archivo2, although it initially appeared with incorrect permissions due to the previous location.
touch archivo2

# mkdir directory2: Creates directory2, also with unexpected permissions because of the same issue.
mkdir directory2

# rm archivo2 && rmdir directorio2: Removes both items so they can be recreated correctly from scratch using the new mask.
rm archivo2 && rmdir directorio2

# cd ~: Moves to the user’s home directory, where there are no ACL or network rules interfering.
cd ~

# umask 027: Ensures the desired mask is still active in this location.
umask 027

# touch archivo2: Recreates the file, this time applying 640 permissions.
touch archivo2

# mkdir directorio2: Recreates the directory, now applying 750 permissions.
mkdir directorio2

# ls -l: Shows the final result and confirms that the permissions were assigned correctly.
ls -l


# umask 077: Sets a strict mask that removes all permissions for group and other users.
umask 077

# touch secreto.txt: Creates the file secreto.txt using the 077 mask.
touch secreto.txt

# mkdir privado: Generates a directory called privado with the same restrictive mask.
mkdir privado

# ls -l: Verifies that secreto.txt has -rw------- permissions and privado has drwx------.
ls -l

# UMASK
# The umask (user mask) is a system value and command that defines the default permissions for files and directories when they are created. It works as a filter that subtracts permissions from a standard base (666 for files and 777 for directories), allowing automatic control over access to newly created data. The higher the mask value, the more restricted the permissions will be for group and other users.

# chown (change owner) and chgrp (change group) are used to manage file and directory ownership. chown allows changing the file owner and can also modify the associated group at the same time. chgrp is dedicated only to changing the group owner. Both commands are essential tools for defining who controls files and which users the permission rules apply to.

# whoami: Displays the name of the current user running the session. In this case, it returned root, the superuser with full system control.
whoami

# echo "Hello" > my_file: Creates a file named my_file containing the text “Hello”. Since it was created by root, it initially belongs to that user.
echo "Hello" > my_file

# ls -l my_file: Shows the file details and confirms that both the owner and group were root.
ls -l my_file

# useradd -m -s /usr/bin/zsh luna: Administrative command that creates a new user named luna.
useradd -m -s /usr/bin/zsh luna

# -m: Automatically creates the user’s home directory (/home/luna).
# -s /usr/bin/zsh: Sets Zsh as the default shell for the user.

# chown luna my_file: Changes the file owner so that it now belongs to the user luna instead of root.
chown luna my_file

# ls -l my_file: Lists the file again to verify the change. The result confirms that luna is now the owner while the group remains root.
ls -l my_file


# groups: Displays the groups to which the current user belongs.
# groupadd group_test: Creates a new group in the system called group_test.
# groups (again): At this point only root still appears because the user has not yet been added to the new group.
# cat /etc/group: Displays the file where all system groups are registered.
# touch comun: Creates an empty file named comun.
# ls -l comun: Checks the permissions and shows that the file belongs by default to the root user and root group.


# usermod -a -G grupo_test luna: Modifies the user luna by adding them to a secondary group.
# -a (add): Adds the group without removing the user from their other groups.
# -G: Indicates that secondary groups are being modified.
usermod -a -G grupo_test luna

# chgrp grupo_test común: Changes the group associated with the file común from root to grupo_test.
chgrp grupo_test comun

# ls -l común: Verifies the change. The result confirms that members of grupo_test are now affected by the group permissions of the file.
ls -l comun

# chown luna:grupo_test mi_archivo: Changes both the owner and the group of the specified file at the same time.
chown luna:group_test mi_archivo

# ls -l mi_archivo: Displays detailed attributes to confirm that the new owner and group were applied correctly.
ls -l mi_archivo

# mkdir -p project/sub: Creates a nested folder structure; the -p option ensures both the parent and child directories are created together.
mkdir -p project/sub

# touch project/readme project/sub/data: Creates two empty files at different levels of the new structure.
touch project/readme project/sub/data

# chown -R luna:grupo_test proyecto: Recursively changes the owner and group of the proyecto folder and all its contents using -R.
chown -R luna

# ls -lR project: Recursively lists the contents of the project and its subdirectories to confirm that ownership changes were applied everywhere.
ls -lR project

# id: Displays the numeric user ID, primary group, and secondary groups.
id

# cat /etc/passwd | head -10: Shows the first registered system users and indicates which accounts exist in the system.
cat /etc/passwd | head -10

#Linux passwords are never saved; only the password hash is saved.
#salt is a random chain that generates when you generate or change your password and adds to your password before Hashing it


groups #shows the group

#see the UID and GID of the actual user

id -u #User id

id -g #Main Group id

id -G #all groups IDs

cat /etc/group #shows all geoups that exist

 cat /etc/group | grep root # grep filters the word besides it
