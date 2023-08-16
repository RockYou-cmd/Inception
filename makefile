#inception

WP_VOL := /home/ael-korc/data/wordpress_files
DB_VOL := /home/ael-korc/data/wp_db


all: vol_fol up

up:
	cd srcs/ && docker-compose up
down:
	cd srcs/ && docker-compose down
prune:
	docker system prune -a
del: down
	docker rmi srcs_nginx
	docker rmi srcs_wordpress
	docker rmi srcs_mariadb
	docker rmi srcs_redis
	docker rmi srcs_ftp
	docker rmi srcs_resume
	docker rmi srcs_adminer
	docker rmi srcs_cadvisor

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
	sudo rm -r $(WP_VOL)
	sudo rm -r $(DB_VOL)
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
