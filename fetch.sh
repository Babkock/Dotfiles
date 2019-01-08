#!/bin/bash
#
# This script updates the copies of my dotfiles for my dotfiles repository.
# Please don't run this from outside of the root directory of the repo.
# It should be "./fetch.sh" every time.
#
echo ".config/awesome/rc.lua..."
cp /home/babkock/.config/awesome/rc.lua ./awesome/rc.lua
echo ".config/awesome/themes/babkock/theme.lua..."
cp /home/babkock/.config/awesome/themes/babkock/theme.lua ./awesome/themes/babkock/theme.lua
echo ".config/awesome/themes/babkock/desktop.jpg..."
cp /home/babkock/.config/awesome/themes/babkock/desktop.jpg ./awesome/themes/babkock/desktop.jpg
echo ".bash_aliases..."
cp /home/babkock/.bash_aliases ./bash_aliases
echo ".bashrc..."
cp /home/babkock/.bashrc ./bashrc
echo "bin/battery..."
cp /home/babkock/bin/battery ./bin/battery
echo "bin/hdmi..."
cp /home/babkock/bin/hdmi ./bin/hdmi
echo "bin/start..."
cp /home/babkock/bin/start ./bin/start
echo "bin/volume..."
cp /home/babkock/bin/volume ./bin/volume
echo ".config/i3/config..."
cp /home/babkock/.config/i3/config ./i3/config
echo ".config/polybar/config..."
cp /home/babkock/.config/polybar/config ./polybar/config
echo ".config/i3/wallpaper.jpg..."
cp /home/babkock/.config/i3/wallpaper.jpg ./i3/wallpaper.jpg
echo ".ncmpcpp/config..."
cp /home/babkock/.ncmpcpp/config ./ncmpcpp/config
echo ".config/neofetch/config..."
cp /home/babkock/.config/neofetch/config.conf ./neofetch/config.conf
echo ".mozilla/firefox/*.dev-edition-default/chrome/userChrome.css..."
cp /home/babkock/.mozilla/firefox/*.dev-edition-default/chrome/userChrome.css ./chrome/userChrome.firefox.css
echo ".mozilla/firefox/*.dev-edition-default/chrome/userContent.css..."
cp /home/babkock/.mozilla/firefox/*.dev-edition-default/chrome/userContent.css ./chrome/userContent.firefox.css
echo ".thunderbird/*.default/chrome/userChrome.css..."
cp /home/babkock/.thunderbird/*.default/chrome/userChrome.css ./chrome/userChrome.thunderbird.css
echo ".nanorc..."
cp /home/babkock/.nanorc ./nanorc
echo ".config/ranger/rc.conf..."
cp /home/babkock/.config/ranger/rc.conf ./ranger/rc.conf
echo ".vimrc..."
cp /home/babkock/.vimrc ./vimrc
echo ".xbindkeysrc..."
cp /home/babkock/.xbindkeysrc ./xbindkeysrc
echo ".Xresources.awe..."
cp /home/babkock/.Xresources.awe ./Xresources.awe
echo ".Xresources.i3..."
cp /home/babkock/.Xresources.i3 ./Xresources.i3
echo "Done fetching"