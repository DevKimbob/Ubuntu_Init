#! /bin/bash

# Check if running as sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo: "
  echo "sudo $0"
  exit 1
fi

# turn off auto find printers
systemctl stop cups-browsed
systemctl disable cups-browsed

# turn off bell-styles
line_to_prepend="set bell-style off"
inputrc_file="/etc/inputrc"

if grep -qF "$line_to_prepend" "$inputrc_file"; then
  echo "The line is already present in $inputrc_file"
  exit 0
fi

echo -e "$line_to_prepend\n\n$(cat "$inputrc_file")" > "$inputrc_file"
echo -e "Prepended '$line_to_prepend' to $inputrc_file"

# free Ctrl + Alt + arrow keybind
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "[]"

# set apt mirror
old_mirror="??.archive.ubuntu.com"
sec_mirror="security.ubuntu.com"
new_mirror="mirror.kakao.com"

sed -i "s/$old_mirror/$new_mirror/g" /etc/apt/sources.list
echo "Replaced '$old_mirror' with '$new_mirror' in /etc/apt/sources.list"