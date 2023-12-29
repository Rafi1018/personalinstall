#!/bin/bash

# Enable paccache.timer and preload services
sudo systemctl enable paccache.timer
sudo systemctl enable preload

# Print reminder to edit mkinitcpio.conf
echo "Please edit /etc/mkinitcpio.conf and add 'numlock' after 'keymap'."
