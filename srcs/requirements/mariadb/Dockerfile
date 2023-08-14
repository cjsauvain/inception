FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && apt install mariadb-server && ./mysql_secure

#EXPOSE 3306

#ENTRYPOINT ["nginx", "-g", "daemon off;"]
