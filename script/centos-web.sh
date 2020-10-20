#!/bin/bash


yum install -y httpd httpd-devel httpd-tools

chkconfig httpd on
service httpd stop

rm -rf /var/www/html
lm -s /vagrant /var/www/html

service httpd start

yum install -y php php-cli php-common php-devel php-mysql

# Download starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/Maltazar/garbage/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/Maltazar/garbage/master/files/info.php

service httpd restart



