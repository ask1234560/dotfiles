#!/bin/bash

# hsetroot -fill Arch-Linux-Wallpaper-04-1920x1080.jpg -tint '#9ccfe6' -write Arch-Linux-Wallpaper-04-1920x1080.jpg


targetDir="/home/ananthu/Pictures/.wallpaper/modified"

bgfile="$( ls -A $targetDir | shuf -n 1 )"
gsettings set org.gnome.desktop.background picture-uri "file://$targetDir/$bgfile"

