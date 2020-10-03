#! /bin/bash
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


cat << \EOT>> launcher 
#! /bin/bash
echo "

/  \/  \/___\|  |  //   __\\  |  /  
|  \/  ||   ||  _ < |   __| |   |   
\__ \__/\___/|__|__\\_____/ \___/   
                                    
 ____   ___  _____  __ __  __  __   
/  _/  /___\/  _  \/  |  \/  \/  \  
|  |---|   ||  |  ||  |  |>-    -<  
\_____/\___/\__|__/\_____/\__/\__/ 

"

echo " Choose the kinda help that you need from mikey "
echo " [◉]  1. Pacman Based Distros (ArchLInux & Manjaro etc)"
echo " [◉]  2. Debian Based Distros (All apt distros Parrot, Ubuntu etc)"
echo " [◉]  3. Windows Operating system" 
echo " [◉]  4. Ethical Hacking [Recon & Automate]"
echo " [◉]  5. Update mikey linux to get the latest feutures and updates"


sudo echo "Enter a number # now type a number"
cd $HOME/.automalibu/mikeylinuxep/

read kaki


if [[ "$kaki" -eq 1 ]]; then
cd $HOME/.automalibu/mikeylinuxep/pacman
clear
echo " [◉]  1. Launch cairo dock installer {Arch linux}"
echo " [◉]  2. Install java properly {Arch linux}"
echo " [◉]  3. Check other os and update grub {Arch linux}"
echo " [◉]  4. Make ohmyzsh work on arch {Arch linux}"
echo " [◉]  5. Make blackarchrepo install on arch {Arch linux}"
echo " [◉]  0. Read license agreement"
sleep 1
echo " Choose a number to enable the script to launch for you "

read bazu
if [[ "$bazu" -eq 1 ]]; then
	 ./cariodock.sh
elif [[ "$bazu" -eq 2 ]]; then
	./installjava.sh
elif [[ "$bazu" -eq 3 ]]; then
	./oschecker.sh
elif [[ "$bazu" -eq 4 ]]; then
	./ohmyzshonarch.sh
elif [[ "$bazu" -eq 5 ]]; then
	./blackarchrepo.sh
elif [[ "$bazu" -eq 0 ]]; then
	cat LICENSE
else
	echo "funny thing happened"
fi


#
# The following segment holds debian based script launching
#

elif [[ "$kaki" -eq 2 ]]; then
cd $HOME/.automalibu/mikeylinuxep/debian
clear
echo " [◉] Hold on as i construct the best Debian Based Helper for you"

#
#The following segment holds scripts to help windows based beginners and admins
#

elif [[ "$kaki" -eq 3 ]]; then
cd $HOME/.automalibu/mikeylinuxep/windows
clear
echo " [◉]  Hold on as we construct windows admin photos for you"

#
#The following segmennt holds scripts designed to assist in Ethical hacking reconnaissence process
#
elif [[ "$kaki" -eq 4 ]]; then
cd $HOME/.automalibu/mikeylinuxep/hackerman
clear
echo " [◉] Hold an as we compile the best ethical hacking scripts"

elif [[ "$kaki" -eq 5 ]]; then
clear
echo "[◉] Updaating is Beginning, Script looks similar to installing"
rm -rf $HOME/.automalibu
sh -c "$(curl -fsSl https://raw.githubusercontent.com/hostilesquirrel/mikeylinuxep/master/automate.sh)"

else
 echo " funny you should mention that we are still constructing the scripts for you"
fi
EOT

chmod +x launcher

cat << \EOT>> mikeylinux
sudo echo "script is ready to launch"
cd $HOME/.automalibu/
bash launcher


EOT

chmod +x mikeylinux
sudo mv mikeylinux /usr/local/bin

#source $HOME/.zshrc
source $HOME/.bashrc


echo " [✔] Done installing You can start the script anytime by typing {mikeylinux} on terminal"
