# Inception
This is a System Administration project.

One container is not enough, We have to go deeper :).
This project consists of a small infrastructure composed of different
services under specific rules using docker and docker compose.

Each Docker image has the same name as its corresponding service.
Each service runs in a dedicated container.

• A Docker container that contains NGINX with TLSv1.3.

• A Docker container that contains WordPress + php-fpm without nginx.

• A Docker container that contains MariaDB only without nginx.

• A volume that `contains` WordPress database.

• A second volume that contains WordPress website files.

• A docker-network that `establishes` the connection between the containers.

