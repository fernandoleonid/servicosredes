#!/bin/bash

nomeDominio=$1

cp conf.modelo "/etc/apache2/sites-available/$nomeDominio.conf"

sed -i s/localhost/$nomeDominio/g "/etc/apache2/sites-available/$nomeDominio.conf"

mkdir "/var/www/$nomeDominio"

cp html.modelo "/var/www/$nomeDominio/index.html"

sed -i s/localhost/$nomeDominio/g "/var/www/$nomeDominio/index.html"

a2ensite $nomeDominio.conf

systemctl reload apache2
