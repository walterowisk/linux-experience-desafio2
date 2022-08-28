#!/bin/bash

# DIO Bootcamp Linux Experience 
# Infraestrutura como Código: Script de Provisionamento de um Servidor Web
# Script criado por Walter J. Silva
# GitHub: /walterowisk

echo "Script IaC iniciado!!"
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache..."
apt-get install apache2 -y


echo "Instalando unzip..."
apt-get install unzip -y

echo "Caminhando para o diretório de arquivos temporários..."
cd /tmp

echo "Baixando os arquivos da aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo com a aplicação..."
unzip main.zip

echo "Copiando a aplicação para o diretório Apache"
cd linux-site-dio-main
cp -R * /var/www/html

echo "Tudo pronto!! Script finalizado."
