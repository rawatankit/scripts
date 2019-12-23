#!/bin/bash

#php7.0 installation or upgrade version
sudo add-apt-repository -yppa:ondrej/php
sudo apt-get update -y
sudo apt-get install php7.0 -y
apt-get install -y php7.0-mbstring php7.0-mcrypt php7.0-gd php7.0-mysqlnd php7.0-curl php7.0-
json php7.0-xml php7.0-xmlrpc
phpenmod curl json mcrypt gd mysqlnd mbstring xml xmlrpc
apt-get install -y php7.0 libapache2-mod-php7.0

sudo a2enmod php7.0 ## but first a2dismod php5 ## works also for segmentation problem
sometime php pdo execution driver error shows.

solution is install phpmyadmin than a2dismod php5.
