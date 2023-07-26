#inception

up:
	cd srcs/ && docker-compose up -d
down:
	cd srcs/ && docker-compose down
prune:
	docker system prune -a
del: down 
	docker rmi srcs-nginx
	docker rmi srcs-wordpress

dmaria:
	cd srcs/ && docker-compose down && docker rmi srcs-mariadb -f

