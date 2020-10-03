#! /bin/bash

if !commmand -v wget &> /dev/null
then
	sudo pacman -S wget
else
	wget -q --tries=10 --timeout=20 --spider http://google.com
		if [[ $? -eq 0 ]]; then
				echo "checking internet connection"
		    	echo "internet connection is online"
				curl -O https://blackarch.org/strap.sh

				chmod +x strap.sh

				./strap.sh
				rm -rf strap.sh
				echo "Thank You for using help malibu scripts"
		else
		    	echo "Internet connection down, please retry later"
		fi
fi

