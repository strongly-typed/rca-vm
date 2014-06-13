# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "vagrant-ubuntu1404-server"
    config.vm.box = "xpcc-vm"
    config.ssh.username = "rca"

    config.vm.provider :virtualbox do |v, override|
        v.customize ["modifyvm", :id, "--memory", 1024]
        v.customize ["modifyvm", :id, "--cpus", 2]
    end
end