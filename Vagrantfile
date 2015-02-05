# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-7.0"

  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.network :forwarded_port, host: 13000, guest: 3000
end
