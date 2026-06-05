#!/bin/bash

top # muestra en tiempo real los procesos del sistema y el uso de recursos como CPU y memoria.

top& #ejecuta top en segundo plano, permitiendo seguir usando la terminal mientras el comando continúa corriendo

kill -9 (process ID) # envía la señal SIGKILL a un proceso para finalizarlo de forma inmediata y forzada.
kill -9 8120 # Ejemplo


touch test && touch test123 #crea test y, si tiene éxito, crea también test123.

(ls; ps) ejecuta # ls y ps dentro de un subshell (subproceso). 

ls; ps; whoami  # ejecuta secuencialmente ls, luego ps y finalmente whoami.

lzl || echo "el comando lzl fallo" # intenta ejecutar lzl; si falla, muestra el mensaje "el comando lzl fallo".



echo "Hello World!" > output.txt
cat output.txt


echo "Chao mundo" > output.txt # se sobreescribe
cat output.txt

echo "Chao Chao" >> output.txt # no se sobreescribe por >>


ls -l / &> stdout_and_stderr.txt
cat stdout_and_stderr.txt

ls -l / &>> stdout_and_stderr.txt # se duplica ls -l


ls -l / 1> stdout.txt 2> stderr.txt
cat stdout.txt
cat stderr.txt

lzl 2> error.txt
cat stderr.txt


cat < output.txt

cat << EOF
 Black Hat Bash
 by No Starch Press
EOF


