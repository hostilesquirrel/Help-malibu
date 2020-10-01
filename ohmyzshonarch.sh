#! /bin/bash


echo " [◉]  ZSH themes refuse to work on Arch Sometimes"
echo "	[◉] This script is going to remove grml-zsh-config to make things better"
sleep 1
echo "[....] Checking internet connection"

echo "	[◉] Do you want to reinstall ohmyzsh properly y/n"
read bazu

if [ "$bazu" -eq "y" ];then
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -Rncs grml-zsh-config
elif [ "$bazu" -eq "n" ];then
yay -Rncs grml-zsh-config
else
	echo "re think your life"
fi


