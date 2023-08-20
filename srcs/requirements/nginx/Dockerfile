FROM debian:bullseye-slim

RUN	apt update -y && apt upgrade -y  && apt install nginx -y && rm -rf /etc/nginx/nginx.conf

RUN sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

COPY ./conf/nginx.conf /etc/nginx/

#EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
