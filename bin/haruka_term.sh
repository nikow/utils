#!/bin/bash
set -x 
if [[ $1 == "-s" ]] ;
    then
    xfce4-terminal -T SSH@HARUKA --hide-menubar --hide-toolbar --execute ssh -C -v -D 8080 haruka
    else
    xfce4-terminal -T MOSH@HARUKA --hide-menubar --hide-toolbar --execute mosh --ssh="ssh -vvvvvv -C" -a haruka 
fi
