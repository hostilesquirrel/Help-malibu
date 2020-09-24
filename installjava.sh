#! /usr/bin/bash


if ! command -v java &> /dev/null
then
    echo "Java seems not to be installed ......"
    echo " Installing java ..............."
    echo "Click Y where necessary........ script is for arch users only"
	
    pacman -sS java | grep jre
    pacman -S jre-openjdk

    pacman -sS java | grep jdk

    pacman -S jdk-openjdk

    
    which java

    exit
fi
