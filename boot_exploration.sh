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

