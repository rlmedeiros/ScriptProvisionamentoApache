#!/bin/bash

echo "Atualizando e instalando dependências..."
apt-get update 
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Fazendo download..."
cd /tmp
wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando..." 
unzip main.zip
cd linux-site-dio-main

echo "Copiando para Apache..." 
cp -R * /var/www/html/