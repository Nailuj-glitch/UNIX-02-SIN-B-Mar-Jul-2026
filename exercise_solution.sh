#!/bin/bash

#!/bin/bash
# Indica que el script se ejecuta con bash

if [ -z "$1" ] || [ -z "$2" ]; then
    # Si el primer argumento está vacío O el segundo está vacío...
    echo "Error: faltan argumentos. Uso: $0 <nombre> <dominio>"
    # ...mostramos un mensaje de error con el uso correcto
    exit 1
    # salimos con código 1, indicando que hubo un error
fi
# fin del bloque de validación

name="$1"
# guardamos el primer argumento (nombre) en la variable "name"

target="$2"
# guardamos el segundo argumento (dominio) en la variable "target"

if ping -c 1 "$target" &> /dev/null; then
    # ejecutamos ping con un solo paquete (-c 1) hacia "$target"
    # &> /dev/null oculta toda la salida (normal y de error)
    # "then" se ejecuta si ping devuelve código de salida 0 (éxito)
    result="success"
    # guardamos "success" en la variable result
else
    # si ping falló (código de salida distinto de 0)
    result="failure"
    # guardamos "failure" en la variable result
fi
# fin del bloque if/else del ping

fecha=$(date '+%Y-%m-%d %H:%M:%S')
# ejecutamos el comando date con ese formato y guardamos el resultado en "fecha"

echo "$name,$target,$result,$fecha" >> resultados.csv
# escribimos una línea con los cuatro valores separados por comas
# >> agrega la línea al final del archivo resultados.csv (sin borrar lo anterior)

echo "Listo: $name,$target,$result,$fecha"
# mostramos en pantalla un resumen de lo que se guardó

# terminal
nohup bash exercise_solution.sh mysite nostarch.com &

ps aux | grep exercise_solution.sh
#[1]-  Done                       nohup bash exercise_solution.sh mysite nostarch.com
#[2]+  Done                       nohup bash exercise_solution.sh mysite nostarch.com
#root       28217  0.0  0.0   2404  1776 pts/0    S    17:35   0:00 bash exercise_solution.sh mysite nostarch.com
#root       28268  0.0  0.0   2404  1768 pts/0    S    17:35   0:00 bash exercise_solution.sh mysite nostarch.com
#root       28284  0.0  0.0   1948   832 pts/0    S+   17:35   0:00 grep exercise_solution