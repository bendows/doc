# Nginx vhost

```shell

server {
        listen 80;
        root /home2/gitlab-com-bendows-fblks-php;
        index index.php index.html index.htm index.nginx-debian.html;
        server_name fblksphp;
	access_log /var/log/fblks-php-access.log;
	error_log /var/log/fblks-php.error.log warn;
    	autoindex on;
        location / {
                try_files $uri $uri/ =404;
        }

        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass unix:/var/run/php/php7.2-fpm.sock;
        }

        location ~ /\.ht {
                deny all;
        }
}
```
