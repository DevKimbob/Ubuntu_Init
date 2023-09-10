#! /bin/bash

# Check if running as sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo: "
  echo "sudo $0"
  exit 1
fi

