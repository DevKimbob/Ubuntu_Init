#! /bin/bash

# Check if running as sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo: "
  echo "sudo $0"
  exit 1
fi

apt update && apt upgrade -y
apt install vim \
            git \
            zsh \
            terminator \
            neovim \
            curl \
            wget \
            build-essential \
            cmake \
            ssh \
            gnome-tweaks \
            gnome-shell-extensions \
            bleachbit \
            direnv \
            barrier