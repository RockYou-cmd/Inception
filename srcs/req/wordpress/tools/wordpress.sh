cd var && mkdir -p www/html && cd www/html

wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm latest.tar.gz

sed -i 's#/run/php/php7.4-fpm.sock#9000#g' /etc/php/7.4/fpm/pool.d/www.conf

mkdir /run/php/

php-fpm7.4 -F
