FROM debian:bullseye-slim

RUN	apt update -y && apt upgrade -y  && apt install nginx -y \
	&& apt install openssl -y \
	&& rm -rf /etc/nginx/nginx.conf

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/ssl_conf.sh /etc/nginx/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt < /etc/nginx/ssl_conf.sh

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
