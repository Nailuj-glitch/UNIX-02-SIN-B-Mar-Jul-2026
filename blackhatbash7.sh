#!/bin/bash

grep "35.237.4.214" log.txt

grep "35.237.4.214\|13.66.139.0" log.txt

ps | grep TTY # Filtra los procesos mostrados por ps y muestra solo las líneas que contienen TTY en mayúsculas.

ps | grep -i tty # Filtra los procesos mostrados por ps y muestra las líneas que contienen tty sin distinguir entre mayúsculas y minúsculas.


grep -v "35.237.4.214" log.txt

grep -o "35.237.4.214" log.txt


awk '{print $1}' log.txt

awk '{print $1,$2,$3}' log.txt

awk '{print $2}' log.txt

awk '{print $1,$NF}' log.txt

awk -F',' '{print $1}' example.txt

awk 'NR < 10' log.txt

grep "42.236.10.117" log.txt

awk '{print $7}' log.txt

grep "42.236.10.117" log.txt | awk '{print $7}'



sed 's/Mozilla/Godzilla/g' log.txt

grep "Mozilla" log.txt
grep "Godzilla" log.txt

sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt

grep "Godzilla" newlog.txt
grep "Mozilla" newlog.txt

sed '1d' newlog.txt
sed -i '1d' newlog.txt

cat newlog.txt

sed -i '$d' newlog.txt
cat newlog.txt

sed 's/ //g' newlog.txt > newlog1.txt

sed '8,10d' newlog1.txt

sed -n '10, 15p' log.txt

