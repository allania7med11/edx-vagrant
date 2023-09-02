# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # OS to be installed in the VM
  config.vm.box = "ubuntu/focal64"
  config.vm.box_version = "20201210.0.0"
  config.vm.provider "virtualbox" do |v|
    v.memory = 20000
    v.cpus = 4
  end
  config.vm.network "public_network", ip: "192.168.1.10"
  config.dns.patterns = ["local.overhang.io","studio.local.overhang.io","apps.local.overhang.io"]
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 443, host: 443
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  config.vm.network "forwarded_port", guest: 1999, host: 1999
  config.vm.network "forwarded_port", guest: 1997, host: 1997
  config.vm.network "forwarded_port", guest: 1984, host: 1984
  config.vm.network "forwarded_port", guest: 2001, host: 2001
  config.vm.network "forwarded_port", guest: 2002, host: 2002
  config.vm.network "forwarded_port", guest: 1994, host: 1994
  config.vm.network "forwarded_port", guest: 2000, host: 2000
  config.vm.network "forwarded_port", guest: 1993, host: 1993
  config.vm.network "forwarded_port", guest: 1995, host: 1995

  config.vm.provision "shell", path: "dev/install_docker.sh"
  config.vm.provision "shell", path: "dev/install_tutor.sh"
  config.vm.provision "shell", path: "dev/run_project.sh"
end
