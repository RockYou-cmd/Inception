
service mariadb start

sed -i 's#127.0.0.1#0.0.0.0#g' /etc/mysql/mariadb.conf.d/50-server.cnf


mysql -e "CREATE DATABASE $DB_NAME;"

mysql -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"

mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%';"

mysql -e "FLUSH PRIVILEGES;"

# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'"

service mariadb stop

mysqld_safe

