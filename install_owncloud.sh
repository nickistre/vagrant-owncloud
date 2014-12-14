#!/usr/bin/env bash

# Run as root

# Setup from instructions from: http://software.opensuse.org/download/package?project=isv:ownCloud:community&package=owncloud

wget http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_14.04/Release.key
apt-key add - < Release.key  
 
echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/xUbuntu_14.04/ /' > /etc/apt/sources.list.d/owncloud.list

apt-get update -y

apt-get install -y exim4 php5-imagick php5-readline libgd-tools libmcrypt-dev mcrypt clamav clamav-daemon smbclient libav-tools libreoffice-writer
apt-get install -y --no-install-recommends owncloud

# Setup apache
a2enmod ssl
#a2ensite default-ssl.conf
a2dissite 000-default.conf

cp /tmp/owncloud.conf /etc/apache2/sites-available/owncloud.conf
cp /tmp/owncloud-ssl.conf /etc/apache2/sites-available/owncloud-ssl.conf
a2ensite owncloud.conf
a2ensite owncloud-ssl.conf


service apache2 reload