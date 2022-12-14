#!/bin/bash

echo "Atualizando o servidor"

apt-get update
apt-get upgrade -y

apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando os arquivos do servidor"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Done"
