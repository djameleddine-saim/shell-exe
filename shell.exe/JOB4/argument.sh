#!/bin/sh
#Ce scripte est pour creer un ficher et copier le texte du premier fichier sur le nouvaux 
touch $1 |cat $2 > $1
