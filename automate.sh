#! /usr/bin/bash
# Must run as root

#This script is intended to make the installateion of my scripts easier
echo "starting ............. $0"
sleep 1
echo "executing script at $(hostname)"
sleep 3
clear
echo "
 __  __  ___  __ ___ _____ ___ ___  
/  \/  \/___\|  |  //   __\\  |  /  
|  \/  ||   ||  _ < |   __| |   |   
\__ \__/\___/|__|__\\_____/ \___/   
                                    
 ____   ___  _____  __ __  __  __   
/  _/  /___\/  _  \/  |  \/  \/  \  
|  |---|   ||  |  ||  |  |>-    -<  
\_____/\___/\__|__/\_____/\__/\__/  
    
After install just type (mikeylinux)  start                               
";

# Make Directory and clone the mikey linux ep

echo "[✔] Checking directories...";
sleep 1	 
if [ -d "$HOME/.automalibu/" ]; then
    echo "[◉] Previous installation detected, do you wanna replace [Y/n]:" ;
    read  kalpana
    if [ "$kalpana" = "y" ]; then
        rm -rf $HOME/.automalibu
   		mkdir $HOME/.automalibu
		cd $HOME/.automalibu
		git clone https://github.com/hostilesquirrel/mikeylinuxep
	else
		if [ "$kalpana" = "n" ]; then
			echo "[✘] I have exceeded my thinking, fuck you[✘] ";
            exit
		fi
	fi
else
	echo "[◉] No previous installation detected, proceeding with install:" ;
	echo "."
	echo ".."
	mkdir ~/.automalibu
	cd ~/.automalibu
	git clone https://github.com/hostilesquirrel/mikeylinuxep
	echo "........[done✔]"
fi


cat <<EOT>> mikeylinux 
echo"
/  \/  \/___\|  |  //   __\\  |  /  
|  \/  ||   ||  _ < |   __| |   |   
\__ \__/\___/|__|__\\_____/ \___/   
                                    
 ____   ___  _____  __ __  __  __   
/  _/  /___\/  _  \/  |  \/  \/  \  
|  |---|   ||  |  ||  |  |>-    -<  
\_____/\___/\__|__/\_____/\__/\__/ 
"

echo " Choose a number to enable the script to launch for you "
echo " [◉]  1. Launch cairo dock installer {Arch linux}"
echo " [◉]  2. Install java properly {Arch linux}"
echo " [◉]  3. Check other os and update grub {Arch linux}"
echo " [◉]  4. Make ohmyzsh work on arch {Arch linux}"
echo " [◉]  5. Make blackarchrepo install on arch {Arch linux}"

echo " [◉]  0. Read license agreement"
read option
cd $HOME/.automalibu/mikeylinuxep

if [ "$option" == "1" ];then
	bash cariodock.sh
elif [ "$option" == "2" ];then
	bash installjava.sh

elif [ "$option" == "3" ]; then
	bash oschecker.sh

elif [ "$option" == "4" ]; then
	bash ohmyzshonarch.shcd 

elif [ "$option" == "5" ]; then
	bash blackarchrepo.sh
elif [ "$option" == "0" ]; then

cat  LICENSE
else
	echo "no option selected"
fi

EOT
chmod +x mikeylinux
sudo mv mikeylinux /bin



if [ -f "$HOME/.zshrc" ]; then
	source $HOME/.zshrc
	source $HOME/.bashrc
elif [ -f "$HOME/.bashrc"]; then
	source $HOME/.bashrc
else
source $HOME/.bashrc
source $HOME/.zshrc

fi

echo " [✔] Done installing You can start the script anytime by typing {mikeylinux} on terminal"
