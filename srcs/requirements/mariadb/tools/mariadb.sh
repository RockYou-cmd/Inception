
service mariadb start

chmod 777 /var/lib/mysql/wordpress_db

sed -i 's#127.0.0.1#0.0.0.0#g' /etc/mysql/mariadb.conf.d/50-server.cnf


mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"


mysql -e "CREATE USER IF NOT EXISTS'$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"

mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%';"

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'"

mysql -e "FLUSH PRIVILEGES;" -p$MYSQL_ROOT_PASSWORD

mysqladmin -p$MYSQL_ROOT_PASSWORD shutdown

mysqld_safe