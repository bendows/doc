#!/bin/sh -x
sudo apt update
sudo apt install -y nginx
sudo apt install -y mysql-server
sudo apt install -y php-fpm php-mysql
sudo systemctl enable php7.4-fpm
sudo systemctl enable nginx
sudo apt -y install certbot python3-certbot-nginx
# sudo mysql_secure_installation
# certbot --nginx -d domain.co.za
