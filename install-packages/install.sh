#!/bin/sh

AUR_PACKAGES=(aurget smartgit visual-studio-code-bin spotify)
PACMAN_PACKAGES=(pavucontrol pulseaudio git firefox vim emacs xclip)
sudo pacman -Sy ${PACMAN_PACKAGES[*]} --noconfirm



git clone --depth=1  https://github.com/pbrisbin/aurget.git aur-manager
./aur-manager/aurget -S  ${AUR_PACKAGES[*]} --noconfirm --noedit --discard
