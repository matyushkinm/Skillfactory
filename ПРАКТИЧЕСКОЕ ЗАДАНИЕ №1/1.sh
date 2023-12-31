#!/bin/bash

#Проверка на наличие репозитория Backports.
if [ `cat /etc/apt/sources.list | grep -c Backports` -eq 0 ]; 
then echo "deb http://archive.ubuntu.com/ubuntu $(lsb_release -cs)-backports main restricted universe multiverse" >> /etc/apt/sources.list 	
fi

# Обновление пакетного менеджера.
apt-get update

# Установка и запуск Apache2.
apt install apache2 -y
systemctl start apache2

# Установка Python.
apt install python3 -y

# Установка и поднятие SSH-сервера.
apt install openssh-server -y
systemctl start sshd

# Добавление пользователя.
useradd -m -s /bin/bash user1
echo "user1:password" | chpasswd

# Установка и настройка Git.
apt install git -y

# Установка и настройка PHP.
apt install php7.0-fpm php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php7.0-mcrypt php7.0-json php7.0-opcache php7.0-xmlrpc php7.0-xsl php7.0-mbstring -y
systemctl start php7.0-fpm

# Установка и настройка MySQL.
apt-get install mysql-server -y
systemctl start mysql

# Установка и настройка Docker.
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker $USER