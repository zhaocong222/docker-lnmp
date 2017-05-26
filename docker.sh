sudo docker run --name mysql -d -p 3306:3306 -v $HOME/docker/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 lemon/mysql

sudo docker run --name php -d -p 9000:9000 -v $HOME/web:/usr/local/nginx/html --link mysql:mysql lemon/php

sudo docker run --name nginx -d -p 80:80 -v $HOME/web:/usr/local/nginx/html --link php:php lemon/nginx
