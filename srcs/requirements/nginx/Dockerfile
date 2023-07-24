FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y  && apt install nginx -y

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
