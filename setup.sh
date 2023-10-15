#!/bin/bash

# this is the script for installing the commit binary in executable file in the /bin directory

echo -e '\e[32mInstalling the required packages...'
echo -e '\e[32mInstalling figlet, NodeJS and Npm...\e[0m'

# Check if apt is available (Debian-based)
if command -v apt &>/dev/null; then
    sudo apt update
    sudo apt install figlet nodejs npm -y

# Check if pacman is available (Arch-based)
elif command -v pacman &>/dev/null; then
    sudo pacman -Syu --noconfirm figlet nodejs npm

# Check if dnf is available (Fedora)
elif command -v dnf &>/dev/null; then
    sudo dnf install figlet nodejs npm -y

# Check if rpm is available (RHEL, CentOS)
elif command -v rpm &>/dev/null; then
    sudo rpm -ivh https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/f/figlet-2.2.5-8.el8.x86_64.rpm
    # Assuming Node.js and npm are available in EPEL repository for RHEL/CentOS

else
    echo -e '\e[31mNo supported package manager found. Please install figlet, Node.js, and npm manually for your distribution.\e[0m'
    exit 1
fi

clear
figlet E X P R E S S
sudo cp express /bin
sudo chmod +x /bin/express

echo -e '\e[32mInstallation successful you are good to go!!!!!\e[0m'
echo -e '\e[34m[INFO] Type \e[35mexpress\e[34m in the directory where you want to make the express app and see the script do the stuff for you...\e[0m'
echo -e '\e[31mHappy hacking!!\e[0m'
