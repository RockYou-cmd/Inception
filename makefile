#inception

all: vol_fol up

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
	# docker volume rm srcs_wp_vol
	rm -rf /Users/ael-korc/Inception/srcs/requirements/wordpress/wordpress_filess

vol_fol:
	mkdir /Users/ael-korc/Inception/srcs/requirements/wordpress/wordpress_filess

dmaria:
	cd srcs/ && docker-compose down && docker rmi srcs-mariadb -f

