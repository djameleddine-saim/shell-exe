#!/bin/sh
#Ce script affichera soit “Bonjour, je suis un script !” soit “Au revoir et bonne journée”
#selon les conditions
if [ "$1" = "Hello" ] #première condition 
        then
        echo "Bonjour, je suis un script !"
fi 

if [ "$1" = "Bye" ] #deuxième condition 
        then
        echo "Au revoir et bonne journée"
fi
