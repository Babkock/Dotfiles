#!/bin/bash
#
# This script updates the copies of my dotfiles for my dotfiles repository.
# Please don't run this from outside of the root directory of the repo.
# It should be "./fetch.sh" every time.
#
echo "=== Fetching ===";
#echo ".bash_aliases..."
#cp /home/babkock/.bash_aliases ./bash_aliases
#echo ".bashrc..."
#cp /home/pi/.bashrc ./bashrc
echo "/usr/bin/panel..."
cp /usr/bin/panel ./bin/panel
echo "/usr/bin/panel_bar..."
cp /usr/bin/panel_bar ./bin/panel_bar
echo "/usr/bin/panel_colors..."
cp /usr/bin/panel_colors ./bin/panel_colors
echo ".config/bspwm/bspwmrc..."
cp /home/pi/.config/bspwm/bspwmrc ./bspwm/bspwmrc
#echo ".config/i3/config..."
#cp /home/pi/.config/i3/config ./i3/config
#echo ".config/i3/wallpaper.jpg..."
#cp /home/pi/.config/i3/wallpaper.jpg ./i3/wallpaper.jpg
#echo ".config/ncmpcpp/config..."
#cp /home/babkock/.config/ncmpcpp/config ./ncmpcpp/config
#echo ".config/polybar/config..."
#cp /home/babkock/.config/polybar/config ./polybar/config
echo ".config/sxhkd/sxhkdrc..."
cp /home/pi/.config/sxhkd/sxhkdrc ./sxhkd/sxhkdrc
#echo ".config/neofetch/config..."
#cp /home/babkock/.config/neofetch/config.conf ./neofetch/config.conf
#echo ".mozilla/firefox/*.dev-edition-default/chrome/userChrome.css..."
#cp /home/babkock/.mozilla/firefox/*.dev-edition-default/chrome/userChrome.css ./chrome/userChrome.firefox.css
#echo ".mozilla/firefox/*.dev-edition-default/chrome/userContent.css..."
#cp /home/babkock/.mozilla/firefox/*.dev-edition-default/chrome/userContent.css ./chrome/userContent.firefox.css
#echo ".thunderbird/*.default/chrome/userChrome.css..."
#cp /home/babkock/.thunderbird/*.default/chrome/userChrome.css ./chrome/userChrome.thunderbird.css
#echo ".nanorc..."
#cp /home/pi/.nanorc ./nanorc
#echo ".config/ranger/rc.conf..."
#cp /home/pi/.config/ranger/rc.conf ./ranger/rc.conf
#echo ".vimrc..."
#cp /home/pi/.vimrc ./vimrc
#echo ".xbindkeysrc..."
#cp /home/pi/.xbindkeysrc ./xbindkeysrc
echo ".zshrc..."
cp /home/pi/.zshrc ./zshrc
echo "Done fetching"
