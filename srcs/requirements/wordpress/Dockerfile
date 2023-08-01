FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && curl -LO https://wordpress.org/latest.tar.gz && tar xzvf latest.tar.gz && cp ./wordpress/wp-config-sample.php ./wordpress/wp-config.php && cp -a ./wordpress/. /var/www/jsauvain/wordpress && rm -rf latest.tar.gz

EXPOSE 9000

ENTRYPOINT ["nginx", "-g", "daemon off;"]
