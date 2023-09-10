#! /bin/bash

# Check if running as sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo:"
  echo "sudo $0"
  exit 1
fi

# Basic Ubuntu Setup
./Basic_Ubuntu_Setup/start.sh

# Install Packages
./Install_Packages/start.sh

# Need to use GUI
# 1. set ethernet
# 2. reboot and set input language
# 3. privacy-screen_lock, power options
# 4. dconf-editor : org/gnome/desktop/sound/event-sounds off