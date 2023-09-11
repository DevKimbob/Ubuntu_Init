#! /bin/bash

# Check if running as sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo: "
  echo "sudo $0"
  exit 1
fi

# make init.vim
mkdir -p ~/.config/nvim
cp ./init.vim ~/.config/nvim/init.vim

# Vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# mk todo
echo ":PlugInstall" > ..todo/nvim.txt