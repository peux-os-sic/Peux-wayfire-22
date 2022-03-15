#!/bin/bash

# Description : Peux OS Wayfire -- layout changer script

# use blank_condition file's existence in waybar/wayfire directory to change the layout.
dir="$HOME/.config/waybar/wayfire/"

if [ -e $dir/blank_condition ]
then

    notify-send "Switching to Fancy Layout" -i cube
    #move the condition file one directory up
    mv $dir/blank_condition $dir/layout2/blank_condition

     # if file doesn't exists, move to alternate layout
    killall waybar
    waybar -c ~/.config/waybar/wayfire/config-wayfire -s ~/.config/waybar/wayfire/style.css

    # randomize wallpaper
    bash ~/.config/system_scripts/pkill_bc

    # modify wayfire config
    sed -i '/panel = waybar/c\panel = waybar -c ~/.config/waybar/wayfire/config-wayfire -s ~/.config/waybar/wayfire/style.css' $HOME/.config/wayfire.ini

    sleep 2

else

    notify-send "Switching to Easy Layout" -i cube
    #move the condition file into sub-directory
    mv $dir/layout2/blank_condition $dir/blank_condition

    #  move to default layout
    killall waybar
    waybar -c ~/.config/waybar/wayfire/layout2/config-wayfire -s ~/.config/waybar/wayfire/layout2/style.css

   # randomize wallpaper
    bash ~/.config/system_scripts/pkill_bc

    # modify wayfire config
    sed -i '/panel = waybar/c\panel = waybar -c ~/.config/waybar/wayfire/layout2/config-wayfire -s ~/.config/waybar/wayfire/layout2/style.css' $HOME/.config/wayfire.ini

    sleep 2

fi
