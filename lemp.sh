#!/bin/sh -x
sudo apt update
sudo apt install -y nginx
sudo apt install -y mysql-server
sudo apt install -y php-fpm php-mysql
systemctl enable php7.4-fpm
systemctl enable nginx
apt install -y certbot

# sudo mysql_secure_installation
