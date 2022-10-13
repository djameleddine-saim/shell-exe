#!/bin/sh
#script d'un  mini calculatrice.
if [ "$2" = "+" ] 
        then
total=$(($1+$3))
        echo $total
fi

if [ "$2" = "-" ] 
        then
total=$(($1-$3))
        echo $total
fi
if [ "$2" = "x" ] 
        then
total=$(($1*$3))
        echo $total
fi
if [ "$2" = "/" ] 
        then
total=$(($1/$3))
        echo $total
fi

