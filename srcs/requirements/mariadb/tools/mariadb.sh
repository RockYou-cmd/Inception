
service mariadb start

sed -i 's#127.0.0.1#0.0.0.0#g' /etc/mysql/mariadb.conf.d/50-server.cnf

mysql -e "CREATE DATABASE $DB_NAME;"

mysql -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"

mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"

mysql -e "FLUSH PRIVILEGES;"

service mariadb stop

mysqld_safe