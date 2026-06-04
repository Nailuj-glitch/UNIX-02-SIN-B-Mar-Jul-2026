bash --version
    #GNU bash, version 5.3.3(1)-release (x86_64-alpine-linux-musl)
    #Copyright (C) 2025 Free Software Foundation, Inc.
    #License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

env # Variable de entorno


echo ${SHELL}
    #/bin/bash


echo ${RANDOM}
    # 22282


echo ${UID}
    #1000


echo ${OSTYPE}
    # linux-musl


ps -ef


df --human-readable


#! #shebang line


 bash -r blackhatbash1.sh
 bash -n blackhatbash1.sh
 bash -x blackhatbash1.sh # bucle infinito
 man

set -x
    #+++ __vsc_preexec_only -x
    #+++ '[' 1 = 0 ']'
    #++ __set_prompt
    #++ local ec=0
    #++ '[' 0 -eq 0 ']'
    #++ mark=$'\E[32m✓\E[0m'
    #++ PS1=$'\E[36m[Julián-Villalba]\E[0m \E[33m\\W\E[0m \E[32m✓\E[0m \\$ '

set +x
    #++ __vsc_preexec_only -x
    #++ '[' 1 = 0 ']'
    #+ set +x

