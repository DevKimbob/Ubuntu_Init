#! /bin/bash

# Check if running as sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo:"
  echo "sudo $0"
  exit 1
fi

# mkdir : todo
mkdir todo

# Basic Ubuntu Setup
cd Basic_Ubuntu_Setup
bash start.sh
cd ..

# Install Packages
cd Install_Packages
bash start.sh
cd ..

# Install Zsh
cd Install_Zsh
bash start.sh
cd ..

# Install NVim
cd Install_NVim
bash start.sh
cd ..

# WhiteSur
cd WhiteSur
bash start.sh
cd ..

# finallize
cd todo
cat *

# Need to use GUI
# 1. set ethernet
# 2. reboot and set input language
# 3. privacy-screen_lock, power options
# 4. dconf-editor : org/gnome/desktop/sound/event-sounds off