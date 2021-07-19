#!/bin/sh
#          _       _ __           
#    _  __(_)___  (_) /___________
#   | |/_/ / __ \/ / __/ ___/ ___/
#  _>  </ / / / / / /_/ /  / /__  
# /_/|_/_/_/ /_/_/\__/_/   \___/
#
feh --bg-scale ~/.config/bspwm/wallpaper.jpg
pkill -x tinyserve 2> /dev/null
tinyserve &

pkill -x xbindkeys 2> /dev/null
xbindkeys &

xinput set-prop 11 "libinput Accel Speed" 0.5
xinput set-prop 11 "libinput Natural Scrolling Enabled" 1
xinput set-prop 12 "libinput Accel Speed" 0.5
xinput set-prop 12 "libinput Natural Scrolling Enabled" 1
xinput set-prop 14 "libinput Accel Speed" 0.5
xinput set-prop 14 "libinput Natural Scrolling Enabled" 1

xinput set-prop 11 "libinput Tapping Enabled" 1
xinput set-prop 11 "libinput Accel Speed" 0.5
xinput set-prop 15 "libinput Tapping Enabled" 1
xinput set-prop 15 "libinput Accel Speed" 0.5
xinput set-prop 20 "libinput Tapping Enabled" 1
xinput set-prop 20 "libinput Accel Speed" 0.5

xrandr --output eDP-1 --brightness 0.7
xrandr --output HDMI-1 --brightness 0.7
xrandr --output HDMI-2 --brightness 0.7

bspwm
pkill -x xbindkeys 2> /dev/null
pkill -x tinyserve 2> /dev/null

