FROM debian:bullseye-slim

RUN	apt-get update -y && apt-get upgrade -y\
		&& apt-get install -y nginx openssl\
		&& rm -rf /etc/nginx/nginx.conf

COPY ./conf/nginx.conf /etc/nginx/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=FR/D=Charente/T=Angouleme/O=42/OU=42student/CN=cjsauvain/UID=jsauvain"

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
