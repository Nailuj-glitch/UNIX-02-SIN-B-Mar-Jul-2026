#view main principal group

id
 #uid=0(root) gid=0(root) grupos=0(root)

id -gn # just the name of the main group

#Create an archive and see what group it inherits
touch ~/test_grupo_heredado.txt

ls -la ~/test_grupo_heredado.txt 
 -rw-r--r-- 1 root root 0 may 28 12:45 /root/test_grupo_heredado.txt

# The group is the main group of the main user

#Viewing main group
id -gn

#echo "Grupo actual: $(id -gn);}

# Create a file before newgrp
touch ~/antes_de_newgrp.txt

ls -la ~/antes_de_newgrp.txt
 -rw-r--r-- 1 root root 0 may 28 12:53 /root/antes_de_newgrp.txt

 #Changing to group 'desarrolladores'

 newgrp desarrolladores

 apt install util-linux-extra #installing newgrp command


# Verify group change
id -gn
 desarrolladores

# Create new file inside the subshell

touch ~/dentro_de_newgrp.txt

ls -la ~/dentro_de_newgrp.txt
 -rw-r--r-- 1 root desarrolladores 0 may 28 13:13 /root/dentro_de_newgrp.txt

# The group is 'desarrolladores' now

# Create a directory
mkdir -p ~/proyecto_dev/src

ls -la ~/
    total 64
    drwx------ 1 root root             4096 may 28 13:15 .
    drwxr-xr-x 1 root root             4096 may 28 12:16 ..
    -rw-r--r-- 1 root root                0 may 28 12:53 antes_de_newgrp.txt
    -rw-r--r-- 1 root root             5578 may 24 04:01 .bashrc
    -rw-r--r-- 1 root root              607 may 24 04:01 .bashrc.original
    drwxr-xr-x 3 root root             4096 may 28 12:16 .cache
    drwx------ 3 root root             4096 may 28 12:16 .config
    -rw-r--r-- 1 root desarrolladores     0 may 28 13:13 dentro_de_newgrp.txt
    lrwxrwxrwx 1 root root               47 may 28 12:16 .docker -> /workspaces/.codespaces/.persistedshare/.docker
    drwxr-xr-x 3 root root             4096 may 28 12:16 .dotnet
    drwx------ 4 root root             4096 may 28 12:17 .local
    -rw-r--r-- 1 root root              132 may 15 11:37 .profile
    drwxr-xr-x 3 root desarrolladores  4096 may 28 13:15 proyecto_dev
    drwx------ 2 root root             4096 may 28 12:16 .ssh
    -rw-r--r-- 1 root root                0 may 28 12:45 test_grupo_heredado.txt
    drwxr-xr-x 5 root root             4096 may 28 12:16 .vscode-remote
    -rw-r--r-- 1 root root            11180 may 28 12:16 .zshrc


# exiting the newgrp subshell
exit

# Verifying if we returned to the original group
id -gn
 root

# Comparing both files

ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt
    -rw-r--r-- 1 root root            0 may 28 12:53 /root/antes_de_newgrp.txt
    -rw-r--r-- 1 root desarrolladores 0 may 28 13:13 /root/dentro_de_newgrp.txt

