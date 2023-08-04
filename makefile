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

vol_fol:
	if [ ! -d "$(WP_VOL)" ]; then \
		mkdir -p "$(WP_VOL)"; \
	fi
	if [ ! -d "$(DB_VOL)" ]; then \
		mkdir -p "$(DB_VOL)"; \
	fi

vol_del:
	docker volume rm srcs_db_vol
	docker volume rm srcs_wp_vol
	# rm -rf /Users/ael-korc/data/wordpress_files
	# rm -rf /Users/ael-korc/data/wp_db
	rm -rf /Users/ael-korc/data

ls:
	@echo "\033[32mContainers:\033[0m"
	@docker ps -a -q
	@echo ""
	@echo "\033[33mImages:\033[0m"
	@docker images -q
	@echo ""
	@echo "\033[34mVolumes:\033[0m"
	@docker volume ls -q