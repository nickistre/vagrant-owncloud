vagrant-owncloud
================

Vagrant setup to test ownCloud with.  Using Ubuntu 14.04 and setting up the ownCloud repo from http://software.opensuse.org/download/package?project=isv:ownCloud:community&amp;package=owncloud

Requires [vagrant](https://www.vagrantup.com/).  Tested on Kubuntu 14.04 with VirtualBox 4.3.20.

Set to Private IP 192.168.200.200. Update VagrantFile to change this

Database is Postgresql using the following settings
- Username: owncloud
- Password: owncloud
- Database: owncloud

See setup_owncloud.sh script to change these.  

Navigating to http://192.168.200.200 (or the IP changed to) will bring up the installation screen. Setup the initial administrator account and setup the Postgres database settings using the above.
