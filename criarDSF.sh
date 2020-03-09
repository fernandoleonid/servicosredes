#!/bin/bash

for dominio in $(cat listadominios.txt)
do
	./criarDominio.sh $dominio
	./criarSite.sh $dominio
	./criarFTP.sh $dominio
done
