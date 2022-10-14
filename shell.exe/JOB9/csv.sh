#!/bin/sh
#ce script est pour utilise  les cron pour permettre de se relancer automatiquement s'il y a un changement dans le fichier 
if diff /home/djamel/shell.exe/JOB9/Shell_Userlist_origenal.csv /home/djamel/shell.exe/JOB9/Shell_Userlist.csv
then
exit
else
../home/djamel/shell.exe/JOB9/accessrights.sh
rm /home/djamel/shell.exe/JOB9/Shell_Userlist_origenal.csv
cp /home/djamel/shell.exe/JOB9/Shell_Userlist.csv /home/djamel/shell.exe/JOB9/Shell_Userlist_origenal.csv
chmod 777 /home/djamel/shell.exe/JOB9/Shell_Userlist_origenal.csv
fi
