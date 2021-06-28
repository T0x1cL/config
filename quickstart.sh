#!/bin/sh
read -p "Arch or Artix? " input
if [ $input == "Arch" ]; then
	echo "Arch Linux"
	sudo ln -srf ./arch-pacman.conf /etc/pacman.conf
	sudo ln -srf ./pacman.d/* /etc/pacman.d/
elif [ $input == "Artix" ]; then
	echo "Artix Linux"
	sudo ln -srf ./artix-pacman.conf /etc/pacman.conf
	sudo ln -srf ./pacman.d/chaotic-mirrorlist /etc/pacman.d/
	sudo ln -srf ./pacman.d/mirrorlist /etc/pacman.d/mirrorlist-arch
	sudo ln -srf ./pacman.d/mirrorlist-artix /etc/pacman.d/mirrorlist
else
	echo "This script only supports Arch and Artix systems."
	false
fi
ln -srf ./.bashrc ~
ln -srf ./.conkyrc ~
sudo ln -srf I.MingCP-7.01.ttf /usr/share/fonts &&
echo "run sudo fc-cache -fv to reload font cache because this script can't fucking do it"
