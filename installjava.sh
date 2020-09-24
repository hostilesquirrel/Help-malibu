#! /usr/bin/bash
#!/bin/bash

#Script written by malibu to install java, built for the pacman -Syu group
if !commmand -v wget &> /dev/null
then
	echo "Installing dependancies command not found, installing first if fail no internet connection retry"
	sudo pacman -S wget
else
	wget -q --tries=10 --timeout=20 --spider http://google.com
		if [[ $? -eq 0 ]]; then
				echo "checking internet connection"
		    	echo "internet connection is online"
		else
		    	echo "Internet connection down, please retry later"
		fi
fi

if !command -v java &> /dev/null
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
else
	echo " Java seems to be installed"
fi
