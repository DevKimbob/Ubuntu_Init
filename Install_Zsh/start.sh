#! /bin/bash

# Check if running as sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo: "
  echo "sudo $0"
  exit 1
fi

# zsh to default
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# nvm
git clone https://github.com/nvm-sh/nvm.git
bash nvm/install.sh > ..todo/nvm_export.txt
nvm install --lts
npm install -g typewritten

# .zshrc
mv ~/.zshrc ~/.zshrc.bak
cp ./.zshrc ~/.zshrc
echo "source ~/.zshrc" > ..todo/source_zsh.txt