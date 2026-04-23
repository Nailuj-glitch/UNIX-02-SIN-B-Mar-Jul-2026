ls -a == ls --all #they do exactly the same the long one is clearer on a script, while a short one is faster to type in

# this options are the same 
ls -l # shows detailed information about each file
ls -a # shows all files
ls -h # displays file sizes in an easier-to-read format

# they list all files
ls -l -a -h
ls -lah

# to create a directory which has - , you input --
mkdir -- -rf # -- means that the text after the symbol is taken as arguments

rmdir -- -rf # removes the directory

# Help otpions 
ls --help
man ls

# to search
first / to be able to type in
# then type in what you want to search 
n # to go forwrd 
N # to go backwards
q # to quit


man git #git manual

--depth 
# Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless
# --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules shallowly,
# also pass --shallow-submodules.


# types of permits in linux
u # user, owner of the file
g # group, group members 
o # others

r # read
w # write 
x # execute

if starts with - is a directory

# the first three are for u, the next three are for g and the las three are for others

chmode #to change permisions
    #symbolic and sintaxis

#symbolic
chmod [quien][operador][permiso]archivo

quien # u, g, o, o a(all, =)

#Permit chaanges
touch script.sh 
chmod +x script.sh # everyone can execute
chmod u+x script.sh # only the owner can execute
chmod o-r secreto.txt # take away reading to others
chmod u+rw,go-rwx privado # owner writes/reads, no one else can do anything

# Sudo

sudo chmod +x init # give everyone permissions over the init archive

sudo means # substitute user do ; super user do

# sudo only affects the commands beside them

sudo echo "hola">/etc/archivo_protegido # does not work, because sudo only works for "echo"

# using tee
Es como una T en tuberias (de ahi el nombre)

# 1. entra informacion
# 2. se divide en dos caminos

echo "hola" | sudo tee /etc/archivo_protegido > /dev/null

ls /etc # to list the etc directory

cat /etc/archivo_protegido # to see the contents of archivo_protegido

#sudo:superuser

sudo #sonly acts upon the command beside it
shell #a command interpreter 

sudo sh -c 'echo "chao" >> /etc/archivo_protgido'

>> # adds txt to the archive

cat /etc/archivo_protgido # shows content

sudo -i  /  sudo su  /  sudo su - #changes directory to root (superuser terminal)

su - # its the same but requires a password

exit #returns to the normal terminal

rm -rf / #removes all content :P


# '' vs ""

echo "$HOME" # expands the variable and shows its content

echo '$HOME' # treats it as a text, it prints it

# exercises

"#!" # shiban, what shell is gonna be interpret the content

echo '#!/bin/sh' > hola.sh

echo 'echo "Hola desde mi primer script"' >> hola.sh

cat hola.sh

/hola.sh
#Appears as error

#solution
ls -l hola.sh
chmod +x hola.sh
ls -l hola sh
./hola.sh

