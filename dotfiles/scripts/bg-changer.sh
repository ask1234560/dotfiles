#!/bin/bash

# hsetroot -fill Arch-Linux-Wallpaper-04-1920x1080.jpg -tint '#9ccfe6' -write Arch-Linux-Wallpaper-04-1920x1080.jpg

if [ $# -ne 0 ]; then

targetDir="/home/ananthu/Pictures/.wallpaper/modified"
bgfile="$( ls -A $targetDir | shuf -n 1 )"
gsettings set org.gnome.desktop.background picture-uri "file://$targetDir/$bgfile"

else 

find ~/Pictures/Wallpapers/modified ~/Pictures/.wallpaper/modified -type f | shuf | sxiv - -ftbo 2> /dev/null | shuf -n 1 | xargs -i gsettings set org.gnome.desktop.background picture-uri "file://{}"

fi

