#!/bin/sh
#          _       _ __           
#    _  __(_)___  (_) /___________
#   | |/_/ / __ \/ / __/ ___/ ___/
#  _>  </ / / / / / /_/ /  / /__  
# /_/|_/_/_/ /_/_/\__/_/   \___/
#
xwallpaper --output eDP1 --stretch "$HOME/.config/river/ibm.jpg" --output HDMI2 --stretch "$HOME/.config/river/farmhouse.jpg" 2> /dev/null
pgrep tinyserve | xargs kill 2> /dev/null
tinyserve &

xinput set-prop 11 "Synaptics Tap Action" 1 1 1 1 1
xinput set-prop 18 "Synaptics Tap Action" 1 1 1 1 1
xinput set-prop 18 "Synaptics Move Speed" 1.5 1.6 1.6 1.5
xinput set-prop 11 "Synaptics Move Speed" 1.5 1.6 1.6 1.5
xinput set-prop 12 "Synaptics Tap Action" 1 1 1 1 1
xinput set-prop 12 "Synaptics Move Speed" 1.5 1.6 1.6 1.5
xinput set-prop 10 "libinput Accel Speed" 0.5
xinput set-prop 13 "libinput Accel Speed" 0.5
xinput set-prop 10 "libinput Accel Speed Default" 0.5
xinput set-prop 10 "libinput Scrolling Pixel Distance" 35
xinput set-prop 13 "libinput Scrolling Pixel Distance" 35
xinput set-prop 10 "libinput Scrolling Pixel Distance Default" 35
xinput set-prop 10 "libinput Natural Scrolling Enabled" 1
xinput set-prop 11 "libinput Natural Scrolling Enabled" 1
xset r rate 400 100

xrandr --output eDP1 --brightness 0.7
xrandr --output HDMI1 --brightness 0.7
xrandr --output HDMI2 --brightness 0.7

xrdb -merge ~/.Xresources
dbus-launch --exit-with-session bspwm
pgrep emacs | xargs kill 2> /dev/null

pkill -x mpc 2> /dev/null
pkill -x tinyserve 2> /dev/null

