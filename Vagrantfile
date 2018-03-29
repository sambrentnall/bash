# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.


 # config.vm.box = "debian/stvaretch64"
  config.vm.box = "ubuntu/xenial64"

# Set the default hostname for this ubuntu box
  config.vm.hostname = "middleware"

  config.vm.provider :virtualbox do |v|
     v.name = "middleware"
     v.memory = 512
     v.cpus = 1
   end 

  config.vm.provision :ansible do |ansible|
         ansible.verbose = "v"
        ansible.playbook = "middleware.yml"
        #  ansible.inventory_path = ".vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory"
        #  ansible.raw_arguments  = "--ask-vault-pass"
    end

end
