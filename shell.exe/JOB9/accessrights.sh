#!/bin/sh
#Un script qui va  récupérer les informations des utilisateurs et les crée sur votre système
#Si l’utilisateur est un admin, il pass en rôle de super utilisateur

export IFS=","
cat /home/djamel/shell.exe/JOB9/Shell_Userlist_origenal.csv | while read Id Prenom Nom Mdp Role
do
sudo userdel $Prenom-$Nom
sudo groupdel $Prenom-$Nom
sudo useradd $Prenom-$Nom
        echo "$Prenom-$Nom:$Mdp" | sudo chpasswd
        sudo usermod -u "$Id" "$Prenom-$Nom"
                if [ "$Role" = "Admin" ]
                then
                sudo usermod -aG sudo $Prenom-$Nom
                fi
done
