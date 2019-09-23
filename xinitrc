#!/bin/sh
feh --bg-scale /home/babkock/.config/bspwm/wallpaper.jpg
xrdb -merge /home/babkock/.Xresources
killall tinyserve
tinyserve &
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor editor-font "Anonymous Pro Regular 15"
gsettings set org.gnome.gedit.preferences.editor scheme "oblivion"
gsettings set org.gnome.gedit.preferences.editor display-overview-map true
gsettings set org.gnome.gedit.preferences.editor tabs-size 4
#dwm
bspwm
