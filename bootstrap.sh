#!/bin/sh

# adapted from https://github.com/awslabs/elasticache-hybrid-architecture-demo

sleep 10
yum -y install httpd24 php70 php70-mysqlnd unzip

# prepare php application
git clone https://github.com/chitboon/phpredis
cd phpredis
unzip crimes-2012-2015.zip

# download predis client
git clone git://github.com/nrk/predis.git

# move to document root
mv * /var/www/html/
chmod 0644 /var/www/html/*.php

# enable http service
service httpd start
chkconfig httpd on
