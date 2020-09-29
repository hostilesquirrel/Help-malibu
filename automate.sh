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

sudo echo "switching to install dir # now type a number"
cd $HOME/.automalibu/mikeylinuxep/
read bazu

#Tempfix

if [ "$bazu" -eq "$a" ]; then
	bash cariodock.sh
	elif [ "$bazu" -eq "$b" ]; then
		bash installjava.sh
		elif [ "$bazu" -eq "$c" ]; then
			bash oschecker.sh
			elif [ "$bazu" -eq "$d" ]; then
				bash ohmyzshonarch.sh
				elif [ "$bazu" -eq "$e" ]; then
					bash blackarchrepo.sh
					elif [ "$bazu" -eq "$f" ]; then
						cat  LICENSE
						else
							echo "no option selected"
fi

EOT
chmod +x mikeylinux
sudo mv mikeylinux /bin

#source $HOME/.zshrc
source $HOME/.bashrc


echo " [✔] Done installing You can start the script anytime by typing {mikeylinux} on terminal"
