#!/bin/bash


##################################################
## Author - DN-debug
## Description - Peux wayfire setup
##################################################

# copy configurations

if zenity --question --text="Want to copy the configurations?"
then
    echo "changing directory"
    cd ../
    mkdir $HOME/tmp
    cp -r Peux-wayfire-22/ $HOME/tmp/
    rm -rf $HOME/tmp/Peux-wayfire-22/install.sh
    rm -rf $HOME/tmp/Peux-wayfire-22/.git
    rm -rf $HOME/tmp/Peux-wayfire-22/details.md
    rm -rf $HOME/tmp/Peux-wayfire-22/*.png
    notify-send "Copied the configurations to $HOME/tmp/"
else
    notify-send "skipping the setup!"
fi

# cleanup

rm -rf /tmp/fetcher/Peux-wayfire-22
notify-send "Done!"
