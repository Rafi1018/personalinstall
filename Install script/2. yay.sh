#!/bin/bash

# Install Yay from the AUR
git clone https://aur.archlinux.org/yay.git ~/yay && cd ~/yay && makepkg -si

cd ~
rm -rf yay

# Generate Yay database
yay -Y --gendb

# Update system packages with development packages
yay -Syu --devel

# Save development packages to config file
yay -Y --devel --save

# Install additional packages with Yay
yay -Syu preload aic94xx-firmware wd719x-firmware upd72020x-fw mkinitcpio-numlock
