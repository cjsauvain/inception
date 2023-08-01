FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y  && apt install nginx -y && rm -rf /etc/nginx/nginx.conf

EXPOSE 80

COPY ./conf/nginx.conf /etc/nginx/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
