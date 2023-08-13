
if [ ! -f "/already.txt" ]; then

touch /already.txt

mkdir -p /var/run/vsftpd/empty

adduser  alae --disabled-password --gecos ""

echo "alae:am" | chpasswd

sed -i "s#anonymous_enable=NO#anonymous_enable=YES#g" /etc/vsftpd.conf

sed -i "s/#write_enable=YES/write_enable=YES/g" /etc/vsftpd.conf

fi

vsftpd
