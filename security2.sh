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