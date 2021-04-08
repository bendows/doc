#!/bin/sh -x
sudo apt-get remove policykit-1
sudo apt autoremove
sudo systemctl stop snapd && sudo systemctl disable snapd
sudo systemctl stop snapd && sudo systemctl disable snapd
sudo apt purge snapd
sudo rm -rf /home/ubuntu/snap /snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd
sudo apt-get remove accounts-daemon
apt-get remove dbus
apt-get remove multipath-tools
