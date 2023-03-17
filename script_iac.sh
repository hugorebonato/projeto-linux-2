#!/bin/bash

echo "SCRIPT PARA AUTOMATIZAR SERVIDOR"

echo "Atualizando o sistema"
apt-get update
apt-get upgrade -y

echo "Instalando servidor apache"
apt-get install apache2 -y
apt-get install unzip -y

echo "Copiando arquivos para o servidor"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip


cp -R linux-site-dio-main/* /var/www/html/

