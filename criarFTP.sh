#!/bin/bash

dominio=$1
usuario=$(echo $1 | cut -d. -f1)

useradd $usuario -p $(openssl passwd '123') -d /var/www/$dominio

chown $usuario.$usuario /var/www/$dominio
