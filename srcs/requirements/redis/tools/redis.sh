
sed -i "s#daemonize yes#daemonize no#g" /etc/redis/redis.conf

sed -i "s#127.0.0.1#0.0.0.0#g" /etc/redis/redis.conf

service redis-server start