#! /usr/bin/bash

echo "[✔] Installing cairo dock the right way"
sleep 1
echo "[✔] Testing Internet connection"
sleep 1
clear

HOST="google.com"
ping -c 3 $HOST
clear
if [ "$?" -eq "0" ]
then
echo "[✔]Internet test passed"
yay -Ss cairo-dock
echo "[✔]Do you see an alternative aur repo you like Y/n"
echo "[✔]Type n to let the script choose for you"
read Alternative
if [ "$Alternative" == "y" ];then
	echo " copy the aur and paste it to install "
	read mammy

	yay -S cairo-dock-plug-ins
	yay -S $mammy
else
	if [ "$Alternative" == "n" ];then
		yay -S cairo-dock-plug-ins
		yay -Ss cairo-dock
	fi
fi

echo 
else
echo " Your internet is unreachable , check your settings"
fi

