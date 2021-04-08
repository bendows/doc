#!/bin/sh -x
sudo apt-get -y --force-yes remove policykit-1
sudo systemctl stop snapd && sudo systemctl disable snapd
sudo systemctl stop snapd && sudo systemctl disable snapd
sudo apt -y --force-yes purge snapd
sudo rm -rf /home/ubuntu/snap /snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd
sudo apt-get -y --force-yes remove accounts-daemon
apt-get -y --force-yes remove dbus
apt-get -y --force-yes remove multipath-tools
sudo -y --force-yes apt autoremove
