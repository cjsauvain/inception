DOCKER_COMPOSE_PATH=./srcs/docker-compose.yml

all: up

up:
	mkdir -p ~/data/wordpress ~/data/mariadb
	docker compose -f $(DOCKER_COMPOSE_PATH) up --build -d

down:
	docker compose -f $(DOCKER_COMPOSE_PATH) down

start:
	docker compose -f $(DOCKER_COMPOSE_PATH) start

stop:
	docker compose -f $(DOCKER_COMPOSE_PATH) stop

clean: down
	sudo rm -rf ~/data
	docker system prune -af
	docker volume rm srcs_mariadb
	docker volume rm srcs_wordpress

fclean: clean

re: fclean all

.PHONY: all up down clean fclean re
