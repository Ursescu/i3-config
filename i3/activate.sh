#!/bin/sh

sudo cp ./config ~/.i3/config
sudo cp ./startup_items.sh ~/.i3/startup_items.sh

if [ "$1" = "nvidia" ]; then
    #sudo mhwd -i video-nvidia
    sudo cp ./nvidia-settings.sh ~/.i3/nvidia-settings.sh
    echo "exec --no-startup-id /bin/sh ~/.i3/nvidia-settings.sh" >> ~/.i3/config
fi
