FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && apt install mariadb-server

WORKDIR /etc/

COPY ./mariadb_conf.sh .

#EXPOSE 3306

ENTRYPOINT ["mariadb_conf.sh"]
