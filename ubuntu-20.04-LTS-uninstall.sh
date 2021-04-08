#!/bin/sh -x
sudo apt-get --allow-remove-essential -y remove policykit-1
sudo apt-get --allow-remove-essential -y remove accounts-daemon
sudo apt-get --allow-remove-essential -y remove dbus
sudo apt-get --allow-remove-essential -y remove multipath-tools
sudo apt autoremove
sudo systemctl stop snapd && sudo systemctl disable snapd
sudo systemctl stop snapd && sudo systemctl disable snapd
sudo apt --allow-remove-essential -y purge snapd
sudo rm -rf /home/ubuntu/snap /snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd
