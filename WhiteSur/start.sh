#! /bin/bash

# Check if running as sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo: "
  echo "sudo $0"
  exit 1
fi

# git clone
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
git clone https://github.com/vinceliuice/WhiteSur-wallpapers.git
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
git clone https://github.com/vinceliuice/WhiteSur-cursors.git

# theme
cd WhiteSur-gtk-theme
./install.sh -c Dark -c Light \
              -t purple \
              -N mojave \
              -i ubuntu \
              --darker

./tweaks.sh -g
cd ..

# wallpaper
cd WhiteSur-wallpapers
./install-gnome-backgrounds.sh
cd ..

# icon
cd WhiteSur-icon-theme
./install.sh
cd ..

# cursor
cd WhiteSur-cursors
./install.sh
cd ..