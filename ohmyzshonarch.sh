#! /bin/bash

echo "Zsh themes will refuse to work sometimes"
echo "This script will remove grml-zsh-config to make it work"
echo "Open new terminal after complition"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -Rncs grml-zsh-config


