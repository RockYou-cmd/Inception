#inception

up:
	cd srcs/ && docker-compose up
down:
	cd srcs/ && docker-compose down
prune:
	docker system prune -a
del: down 
	docker rmi srcs-nginx
	docker rmi srcs-wordpress
	docker rmi srcs-mariadb

dmaria:
	cd srcs/ && docker-compose down && docker rmi srcs-mariadb -f

