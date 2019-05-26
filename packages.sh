#!/bin/bash

if [ "${EUID}" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

if [ ! -x "$(command -v yay)" ]; then
    echo "Install yay..."
    sudo pacman -S yay --noconfirm --needed
fi

if [ ! -x "$(command -v zsh)" ]; then
    echo "Setup zsh..."
    yay -S zsh --noconfirm --needed 
    sudo ./install-zsh.sh 
fi

echo "Install other packages packages..."

# Package Managers, Environments, and Languages
sudo pacman -S nodejs --noconfirm --needed
sudo pacman -S npm --noconfirm --needed
sudo pacman -S jdk --noconfirm --needed
sudo pacman -S jre --noconfirm --needed
sudo pacman -S libc++ --noconfirm --needed
sudo pacman -S python3 --noconfirm --needed
sudo pacman -S octave --noconfirm --needed
yay -S visual-studio-code-bin --noconfirm --needed

# Editors 
yay -S sublime-text --noconfirm --needed
sudo pacman -S qtcreator --noconfirm --needed

# Handy Tools
sudo pacman -S vim --noconfirm --needed
sudo pacman -S rsync --noconfirm --needed
yay -S typora --noconfirm --needed
sudo pacman -S flameshot --noconfirm --needed
sudo pacman -S gcc --noconfirm --needed
sudo pacman -S mono --noconfirm --needed
sudo pacman -S meld --noconfirm --needed

# Setup Printer (personal use)
sudo pacman -S manjaro-printer --noconfirm --needed
sudo pacman -S system-config-printer --noconfirm --needed
sudo pacman -S brother-mfc-7460dn --noconfirm --needed
sudo pacman -S libusb-compat --noconfirm --needed
sudo pacman -S brscan4 --noconfirm --needed

# oh my zsh plugins
sudo pacman -S zsh-syntax-highlighting --noconfirm --needed
sudo pacman -S autojump --noconfirm --needed
sudo pacman -S --noconfirm --needed
gem install git_remote_branch 

# Others
sudo pacman -S wine --noconfirm --needed
sudo pacman -S zip --noconfirm --needed
sudo pacman -S unzip --noconfirm --needed
sudo pacman -S downgrade --noconfirm --needed 
yay -S google-chrome --noconfirm --needed
yay -S spotify --noconfirm --needed
sudo pacman -S redshift --noconfirm --needed
sudo pacman -S faudio --noconfirm --needed
