# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network :forwarded_port, host: 5000, guest: 80
config.vm.define "vpnp", primary: true do |vpnp|
  vpnp.vm.provider :virtualbox do |vb|
    config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = false
       # Customize the amount of memory on the VM:
     vb.memory = "1024"
  end
 end
end
config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path = 'puppet/modules'
    puppet.manifest_file = 'init.pp'
  end
end
