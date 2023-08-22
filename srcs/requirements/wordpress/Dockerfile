FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && cd /tmp\
									&& curl -LO https://wordpress.org/latest.tar.gz\
									&& tar xzvf latest.tar.gz\
									&& cp ./wordpress/wp-config-sample.php ./wordpress/wp-config.php\
									&& cp -a ./wordpress/. /var/www/wordpress \
									&& chown -R www-data:www-data /var/www/wordpress\
									&& apt install php-curl php-gd php-intl\
										php-mbstring php-soap php-xml php-xmlrpc php-zip\
									&& systemctl restart php$(php --version | awk '{print $2}' \
										| awk 'NR==1' | head -c 3)-fpm

EXPOSE 9000

ENTRYPOINT ["nginx", "-g", "daemon off;"]
