#inception

WP_VOL := /Users/ael-korc/Inception/srcs/requirements/wordpress/wordpress_files
DB_VOL := /Users/ael-korc/Inception/srcs/requirements/mariadb/wp_db


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
	docker rmi srcs-redis
	docker rmi srcs-ftp
	docker rmi srcs-resume
	docker rmi srcs-adminer
	docker rmi srcs-cadvisor

vol_fol:
	if [ ! -d "$(WP_VOL)" ]; then \
		mkdir -p "$(WP_VOL)"; \
	fi
	if [ ! -d "$(DB_VOL)" ]; then \
		mkdir -p "$(DB_VOL)"; \
	fi

vol_del:
	docker volume rm -f srcs_db_vol
	docker volume rm -f srcs_wp_vol
	rm -r /Users/ael-korc/Inception/srcs/requirements/wordpress/wordpress_files
	docker volume prune -f
	cd srcs && docker-compose down -v

ls:
	@echo "\033[32mContainers:\033[0m"
	@docker ps -a -q
	@echo ""
	@echo "\033[33mImages:\033[0m"
	@docker images -q
	@echo ""
	@echo "\033[34mVolumes:\033[0m"
	@docker volume ls -q

clear: prune vol_del
