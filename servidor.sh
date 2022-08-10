#! /bin/bash

echo "Atualizando servidor apache..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos da aplicação"

cd /tmp 
wget  https://github.com/denilsonbonati/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/




