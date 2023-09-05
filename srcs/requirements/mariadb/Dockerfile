FROM debian:bullseye-slim

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/mariadb_conf.sh .

ENTRYPOINT ["bash", "mariadb_conf.sh"]
