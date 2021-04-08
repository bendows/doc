#!/bin/sh -x
sudo apt update
sudo apt install -y nginx
sudo apt install -y mysql-server
sudo apt install -y php-fpm php-mysql
# sudo mysql_secure_installation
