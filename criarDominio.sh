#!/bin/bash

nomeDominio=$1

echo "
zone \"$nomeDominio\" {
	type master;
	file \"/etc/bind/db.$nomeDominio\";
};
" >> /etc/bind/named.conf.default-zones

cp db.modelo /etc/bind/db.$nomeDominio

sed -i s/localhost/$nomeDominio/g /etc/bind/db.$nomeDominio

systemctl restart bind9
