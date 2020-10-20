#! /bin/bash

#Avoid stresses of checking if your windows installation is there

#Run this script as root
if !command -v os-prober &> /dev/null
then
	sudo pacman -S os-prober
else
	echo "Checking and istalling os-prober"
fi

sudo os-prober

echo "Did you see your operating system, type y/n"
read xinput
if [ $xinput == "y" ];
then
	echo "Updating your grub"
	grub-mkconfig -o /boot/grub/grub.cfg
else
	if [ $xinput == "n" ];
	then
		echo "You are on your own, seems theres a mistake you made"
		echo "I shall update this to solve your problem but later, google for now"
	fi
fi
