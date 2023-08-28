FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && cd /tmp\
									&& curl -LO https://wordpress.org/latest.tar.gz\
									&& tar xzvf latest.tar.gz\
									&& cp ./wordpress/wp-config-sample.php ./wordpress/wp-config.php\
									&& cp -a ./wordpress/. /var/www/wordpress \
									&& chown -R www-data:www-data /var/www/wordpress\
									&& apt install php php-fpm php-mysql mariadb-client -y\
									&& sed -i -r "s/.*DB_NAME.*/define( 'DB_NAME', 'wordpress' )/g" wp-config.php\
									&& sed -i -r "s/.*DB_USER.*/define( 'DB_USER', 'champi' )/g" wp-config.php\
									&& sed -i -r "s/.*DB_PASSWORD.*/define( 'DB_PASSWORD', 'Bonjour456-' )/g" wp-config.php\

COPY ./conf/www.conf /etc/php/8.1/fpm/pool.d/www.conf

EXPOSE 9000

ENTRYPOINT ["systemctl", "start", "php$(php --version | awk '{print $2}' | awk 'NR==1' | head -c 3)-fpm"]
