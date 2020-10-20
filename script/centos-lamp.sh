#!/bin/bash

# Update CentOS without any paches
yum update -y --exclude=kernel

yum install -y nano git unzip screen
yum install -y httpd httpd-devel httpd-tools

chkconfig httpd on
service httpd stop

rm -rf /var/www/html
lm -s /vagrant /var/www/html

service httpd start


yum install -y php php-cli php-common php-devel php-mysql

yum install -y mysql mysql-server mysql-devel

chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

# Download starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/Maltazar/garbage/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/Maltazar/garbage/master/files/info.php

service httpd restart



