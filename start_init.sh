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

# chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable
# vscode
# jetbrain tools
# remove snap
snap list
snap remove --purge snap-store
snap remove --purge gtk-common-themes
snap remove --purge gnome-3-38-2004
snap remove --purge core20 
snap remove --purge bare 
umount /snap/core20/1405
apt autoremove --purge snapd
rm -rf ~/snap/
rm -rf /snap
rm -rf /var/snap
rm -rf /var/lib/snapd
apt-mark hold snapd 
# fonts-powerline
https://github.com/powerline/fonts/tree/master
# xrdp
# conda

# Need to use GUI
# 1. set ethernet
# 2. reboot and set input language
# 3. privacy-screen_lock, power options
# 4. dconf-editor : org/gnome/desktop/sound/event-sounds off
# 5. set barrier to startup