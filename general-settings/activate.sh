#!/bin/sh


sudo cp ./.profile ~/.profile
sudo cp ./.gtkrc-2.0 ~/.gtkrc-2.0
sudo cp ./terminal /bin/terminal
sudo cp ./mimeapps.list ~/.config/mimeapps.list

if [[ ! -d ~/.config/terminator ]]; then
	mkdir ~/.config/terminator
fi
sudo cp ./config ~/.config/terminator/config
