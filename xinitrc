#!/bin/sh
feh --bg-scale /home/babkock/.config/bspwm/wallpaper.jpg
xrdb -merge /home/babkock/.Xresources
tinyserve &
bspwm

