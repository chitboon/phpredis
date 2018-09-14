#!/bin/sh
#
# bootstrap.sh - Script to setup an Amazon ElastiCache environment for PHP
# Copyright 2017 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# A copy of the License is located at
#
# http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is distributed
# on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
# express or implied. See the License for the specific language governing
# permissions and limitations under the License.
#


# setup instance
sleep 10
yum -y install httpd24 php70 php70-mysqlnd unzip

# prepare php application
git clone https://github.com/awslabs/elasticache-hybrid-architecture-demo
cd elasticache-hybrid-architecture-demo

# download predis client
git clone git://github.com/nrk/predis.git

# move to document root
mv * /var/www/html/
chmod 0644 /var/www/html/demo.php

# enable http service
service httpd start
chkconfig httpd on
