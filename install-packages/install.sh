#!/bin/sh

AUR_PACKAGES=(aurget smartgit visual-studio-code-bin spotify terminator ttf-roboto)
PACMAN_PACKAGES=(pavucontrol pulseaudio git firefox vim emacs speedcrunch xclip unzip zip)
sudo pacman -Sy ${PACMAN_PACKAGES[*]} --noconfirm



git clone --depth=1  https://github.com/pbrisbin/aurget.git aur-manager
./aur-manager/aurget -S  ${AUR_PACKAGES[*]} --noconfirm --noedit --discard
