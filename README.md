# README #

### Vagrant Puppet Nginx PHP Draft ###

* Version 16.02.25

### How do I get set up? ###

* Install Vagrant and trusty64 box
`sudo apt-get install --assume-yes vagrant ansible`
`vagrant box add ubuntu/trusty64 https://atlas.hashicorp.com/ubuntu/boxes/trusty64`

* change current directory and run `vagrant up`

* if you need to change ip settings or port translation rules - edit "Vagrantfile" section "config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network :forwarded_port, host: 5000, guest: 80"

* to configure nginx vHosts edit puppet/modules/nginx/files/csproject 

* project file must be placed in "app" directory

Default project available http://127.0.0.1:5000 

### Who do I talk to? ###

* Repo owner CyberManiac