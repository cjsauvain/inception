FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && apt install curl tar sed php php-fpm php-mysql\
													mariadb-client -y\
									&& cd /tmp\
									&& curl -LO https://wordpress.org/latest.tar.gz\
									&& tar xzvf latest.tar.gz\
									&& cp ./wordpress/wp-config-sample.php ./wordpress/wp-config.php\
									&& mkdir -p /var/www/\
									&& cp ./wordpress /var/www/ -R\
									&& chown -R www-data:www-data /var/www/wordpress\
									&& sed -i -e "s/database_name_here/${SQL_DATABASE}/g"\
												-e "s/username_here/${SQL_USER}/g"\
												-e "s/password_here/${SQL_PASSWORD}/g"\
												-e "s/localhost/mariadb/g" wordpress/wp-config.php

COPY ./conf/www.conf /etc/php/8.1/fpm/pool.d/www.conf

ENTRYPOINT ["php$(php --version | awk '{print $2}' | awk 'NR==1' | head -c 3)-fpm"]
