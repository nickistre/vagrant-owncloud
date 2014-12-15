# vagrant-owncloud

Vagrant setup to test ownCloud with.  Using Ubuntu 14.04 and setting up the ownCloud repo from http://software.opensuse.org/download/package?project=isv:ownCloud:community&amp;package=owncloud

## Vagrant Setup

Requires [vagrant](https://www.vagrantup.com/).  Tested on Kubuntu 14.04 with VirtualBox 4.3.20.

Optionally uses [landrush](https://github.com/phinze/landrush) and [vagrant-cachier](https://github.com/fgrehm/vagrant-cachier) plugins if they are installed.

## ownCloud install and setup

Set to Private DHCP ip with hostname "owncloud.vagrant.dev". Update VagrantFile to change this.

If landrush is setup on the host properly, you can access the server via http://owncloud.vagrant.dev

Database is Postgresql using the following settings
- Username: owncloud
- Password: owncloud
- Database: owncloud

See setup_owncloud.sh script to change these.  

Navigating to http://192.168.200.200 (or the IP changed to) will bring up the installation screen. Setup the initial administrator account and setup the Postgres database settings using the above.
