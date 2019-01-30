#!/bin/bash
echo 'Установка AUR (aurman)'
sudo pacman -Syy
sudo pacman -S git --noconfirm

#Ставим зависимость expac-git
git clone https://aur.archlinux.org/expac-git.git
cd expac-git
makepkg -si --noconfirm
cd ..
rm -rf expac-git

#Ставим aurman
git clone https://aur.archlinux.org/aurman.git
cd aurman
makepkg -si --noconfirm --skippgpcheck
cd ..
rm -rf aurman

echo 'Установка программ'
sudo pacman -S firefox  gimp screenfetch vlc qbittorrent f2fs-tools dosfstools ntfs-3g alsa-lib alsa-utils gnome-calculator file-roller gwenview gnome-terminal pulseaudio pulseaudio-alsa unzip unrar p7zip gnome-system-monitor doublecmd-gtk2 deadbeef veracrypt evince mlocate antiword id3lib mutagen python2 python2-pip python2-dev python3 python3-pip python3-dev build-essential python3-pychm aspell-en git calibre ttf-freefont ttf-linux-libertine libmtp libreoffice-fresh libreoffice-fresh-ru xflux xflux-gui-git purple-vk-plugin pidgin-encryption sublime-text3 hunspell-ru pamac-aur --noconfirm

echo 'Включаем сетевой экран'
sudo ufw enable

echo 'Установка завершена!'
rm -rf ~/arch_3.sh