#!/bin/sh
read -p "Arch, Artix, or Parabola? " input
if [ $input == "Arch" ]; then
	echo "Arch Linux"
	sudo ln -srf ./arch-pacman.conf /etc/pacman.conf
	sudo ln -srf ./pacman.d/mirrorlist /etc/pacman.d/mirrorlist
	sudo ln -srf ./pacman.d/chaotic-mirrorlist /etc/pacman.d/
elif [ $input == "Artix" ]; then
	echo "Artix Linux"
	sudo ln -srf ./artix-pacman.conf /etc/pacman.conf
	sudo ln -srf ./pacman.d/chaotic-mirrorlist /etc/pacman.d/
	sudo ln -srf ./pacman.d/mirrorlist /etc/pacman.d/mirrorlist-arch
	sudo ln -srf ./pacman.d/mirrorlist-artix /etc/pacman.d/mirrorlist
elif [ $input == "Parabola" ]; then
	echo "Parabola GNU/Linux-libre"
	sudo ln -srf ./parabola-pacman.conf /etc/pacman.conf
	sudo ln -srf ./pacman.d/chaotic-mirrorlist /etc/pacman.d/
	sudo ln -srf ./pacman.d/mirrorlist-parabola /etc/pacman.d/mirrorlist
else
	echo "This script only supports Arch, Artix, or Parabola systems."
	false
fi
ln -srf ./.bashrc ~
ln -srf ./.conkyrc ~
sudo ln -srf I.MingCP-7.01.ttf W95FA.otf /usr/share/fonts &&
echo "run sudo fc-cache -fv to reload font cache because this script can't fucking do it"
