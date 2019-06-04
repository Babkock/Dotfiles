#!/bin/sh
feh --bg-scale /home/babkock/wallpaper.jpg
xrdb -merge /home/babkock/.Xresources
tinyserve &
bspwm

