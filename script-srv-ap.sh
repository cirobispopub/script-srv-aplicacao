#!/bin/bash

echo "Atualizando o servidor....."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando a aplicacao e descompatando..."

cd /tmp
wget https://github.com/cirobispopub/quiz/archive/refs/heads/main.zip

unzip main.zip
cd quiz-main
cp -R * /var/www/html/

echo "Fim ....!"

