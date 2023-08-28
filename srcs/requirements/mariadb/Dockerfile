FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && apt install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT ["sh mariadb_conf.sh"]
