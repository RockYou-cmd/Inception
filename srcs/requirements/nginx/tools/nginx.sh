
cd /etc/nginx

mkdir ssl && cd ssl

openssl genrsa -out inception.key

openssl req -new -nodes -key inception.key -out inception.csr -subj "/"

openssl x509 -req -days 356 -in inception.csr -signkey inception.key -out inception.crt
