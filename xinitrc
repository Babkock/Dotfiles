#!/bin/sh
#          _       _ __           
#    _  __(_)___  (_) /___________
#   | |/_/ / __ \/ / __/ ___/ ___/
#  _>  </ / / / / / /_/ /  / /__  
# /_/|_/_/_/ /_/_/\__/_/   \___/
#
wal -i "/home/babkock/.config/herbstluftwm/wallpaper.jpg"
pkill -x "tinyserve"
tinyserve &
pkill -x "transmission-daemon"
transmission-daemon
transmission-remote --download-dir "/home/babkock/Downloads"
transmission-remote --incomplete-dir "/home/babkock/Downloads"
transmission-remote --no-lpd --no-dht --pex --utp --ssl
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor use-default-font false
gsettings set org.gnome.gedit.preferences.editor editor-font "Anonymous Pro Regular 13"
gsettings set org.gnome.gedit.preferences.editor background-pattern "grid"
gsettings set org.gnome.gedit.preferences.editor scheme "oblivion"
gsettings set org.gnome.gedit.preferences.editor display-overview-map true
gsettings set org.gnome.gedit.preferences.editor tabs-size 4
#bum --server 127.0.0.2 --size "300" &
herbstluftwm --locked
pkill -x "tinyserve"
pkill -x "bum"

