
# if [ ! -f "/var/www/html/wordpress/wp-config.php" ]; then
if [ ! -f "allready.txt" ]; then

touch /allready.txt

cd var/www/html/wordpress

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

wp core config --dbname=$DB_NAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$DB_HOST --allow-root --skip-check

wp core install --url=localhost --title="Arctic monkeys" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root

wp user create $WP_UNAME $WP_EMAIL --user_pass=$WP_PASS --allow-root


fi


mkdir /run/php/

sed -i 's#/run/php/php7.4-fpm.sock#9000#g' /etc/php/7.4/fpm/pool.d/www.conf


php-fpm7.4 -F