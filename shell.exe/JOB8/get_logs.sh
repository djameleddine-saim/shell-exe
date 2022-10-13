#!/bin/sh
#Ce script afficher les nombre des connexions à votre session sur le nom d'un  fichier avec la date d'exécution
#à l'aide de cron le script va être exécuté chaque heure
#ensuite en va archive les fichier  sur un dossier 
d=$(date +%d-%m-%Y-%H-%M)
sudo grep -c "session opened" /var/log/auth.log >/home/djamel/shell.exe/JOB8/number_connection-$d
tar -cf number_connection-$d.tar.gz /home/djamel/shell.exe/JOB8/number_connection-$d
mv number_connection-$d.tar.gz /home/djamel/shell.exe/JOB8/Backup

