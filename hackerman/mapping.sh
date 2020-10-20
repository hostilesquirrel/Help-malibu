#! /bin/bash

# Actual Penetration Script

vall_halla () {

echo "[◉]. Executing ....commands"
echo "[◉].Make txt file with ip's to crawl or ip to crawl and paste Path"

read path
for line in $(cat $path); do
	mkdir $line;
	mkdir ./$line/screenshots
	nmap -sC -sV -p- -o ./$line/Full-TCP $line -Pn --min-rate 2000
done;
}


echo "[◉]. Checking and Installing Dependancies"

if ! command -v  nmap &> /dev/null
then
	echo "[◉]. Installing nmap"
	echo "[◉]. For pacman (arch) type 1 , For apt (debian) type 2"
	sleep 1
	read answer

if [ "$answer" -eq "1" ]; then
sudo pacman -S nmap
vall_halla
elif [ "$answer" -eq "2" ]; then
sudo apt install nmap
vall_halla

else
echo "well it appears w hae reachec a crisis"

fi
else
vall_halla
fi






