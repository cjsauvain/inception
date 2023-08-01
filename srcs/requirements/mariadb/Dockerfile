FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && apt install mysql-server -y && mysql_secure_installation

EXPOSE 3306

#ENTRYPOINT ["nginx", "-g", "daemon off;"]
