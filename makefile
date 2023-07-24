#inception

up:
	cd srcs/ && docker-compose up -d
down:
	cd srcs/ && docker-compose down
prune:
	docker system prune -a
delete: down prune

dmaria:
	cd srcs/ && docker-compose down && docker rmi srcs-mariadb -f

