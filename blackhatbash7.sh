#!/bin/bash

grep "35.237.4.214" log.txt

grep "35.237.4.214\|13.66.139.0" log.txt

ps | grep TTY # Filtra los procesos mostrados por ps y muestra solo las líneas que contienen TTY en mayúsculas.

ps | grep -i tty # Filtra los procesos mostrados por ps y muestra las líneas que contienen tty sin distinguir entre mayúsculas y minúsculas.


grep -v "35.237.4.214" log.txt

grep -o "35.237.4.214" log.txt