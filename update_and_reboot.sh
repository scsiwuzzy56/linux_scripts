#!/bin/bash

# Update the system
echo "Updating system..."
sudo apt update
sudo apt upgrade -y

# Check if a reboot is required
if [ -f /var/run/reboot-required ]; then
    echo "Reboot is required. Rebooting..."
    sudo reboot
else
    echo "No reboot is required."
fi