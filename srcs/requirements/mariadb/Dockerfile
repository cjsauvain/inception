FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y && apt install mysql-server -y && mysql_secure_installation

#EXPOSE 80

#ENTRYPOINT ["nginx", "-g", "daemon off;"]
