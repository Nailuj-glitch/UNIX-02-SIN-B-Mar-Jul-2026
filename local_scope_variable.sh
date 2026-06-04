#! /bin/bash

PUBLISHER="No_Starch_Press"

print_name(){
    local name="Black Hat Bash"
    echo "$ {name} by ${PUBLISHER}"
}

print_name 

echo "Variable ${name} will not be printed because its a local variable."