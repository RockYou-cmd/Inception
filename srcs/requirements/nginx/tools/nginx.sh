
cd /etc/nginx

mkdir ssl && cd ssl

openssl genrsa -out inception.key

openssl req -new -nodes -key inception.key -out inception.csr -subj "/"

openssl x509 -req -days 356 -in inception.csr -signkey inception.key -out inception.crt

envsubst < /etc/nginx/nginxt.conf > /etc/nginx/conf.d/nginx.conf

sed -i 's#fastcgi_param SCRIPT_FILENAME#fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name#' /etc/nginx/conf.d/nginx.conf

nginx -g 'daemon off;'