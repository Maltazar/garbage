#!/bin/bash


wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm

rpm -ivh mysql80-community-release-el7-3.noarch.rpm yum update

yum install -y mysql mysql-server mysql-devel

chkconfig --add mysqld

chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";



