# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.
  
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.hostname = "owncloud.internal.vagrant.dev"
  
  config.vm.network "private_network", type: "dhcp"
  
  if Vagrant.has_plugin?("vagrant-cachier")
    # Configure cached packages to be shared between instances of the same base box.
    # More info on http://fgrehm.viewdocs.io/vagrant-cachier/usage
    config.cache.scope = :box
  end
  
  if Vagrant.has_plugin?("landrush")
    config.landrush.enabled = true
  end
  
  # copy config files
  config.vm.provision "file", source: "owncloud.conf", destination: "/tmp/owncloud.conf"
  
  
  config.vm.provision "shell", path: "install_postgresql.sh"
  config.vm.provision "shell", path: "install_owncloud.sh"
  config.vm.provision "shell", path: "setup_owncloud.sh"
end
