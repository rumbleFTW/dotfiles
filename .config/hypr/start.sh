#!/usr/bin/bash

# initializing wallpaper daemon
swww init &
swww img ~/Pictures/Wallpapers/forest.jpg &

# networkmanager
nm-applet --indicator &

# waybar
waybar &

#dunst
dunst

