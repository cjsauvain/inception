FROM debian:bullseye-slim

RUN mkdir -p /var/www /run/php

WORKDIR /var/www

RUN	apt-get update -y && apt-get upgrade -y\
	&& apt-get install -y vim wget php php-fpm php-mysql mariadb-client\
	&& wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz\
	&& tar -xzf wordpress-6.0-fr_FR.tar.gz\
	&& rm wordpress-6.0-fr_FR.tar.gz\
	&& chown -R www-data:www-data /var/www/wordpress\
	&& chmod -R 755 /var/www/wordpress\
	&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar\
	&& chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY ./tools/launch.sh /var/

ENTRYPOINT ["bash", "/var/launch.sh"]
