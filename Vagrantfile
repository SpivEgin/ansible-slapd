# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  vagrant_root = File.dirname(__FILE__)
  ENV['ANSIBLE_ROLES_PATH'] = "#{vagrant_root}/.."
  ENV['ANSIBLE_NOCOWS'] = "1"

  config.vm.define "debian" do |debian|
    debian.vm.box = "debian/contrib-jessie64"
    debian.vm.provision "ansible" do |ansible|
      ansible.playbook = "tests/test_vagrant.yml"
    end
    debian.vm.network "forwarded_port", guest: 389, host: 8389, protocol: "tcp"
    debian.vm.network "forwarded_port", guest: 636, host: 8636, protocol: "tcp"
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/xenial64"
    ubuntu.vm.provision "shell",
      inline: "apt-get update && apt-get install -y python"
    ubuntu.vm.provision "ansible" do |ansible|
      ansible.playbook = "tests/test_vagrant.yml"
    end
  end

  config.vm.define "centos" do |centos|
    centos.vm.box = "centos/7"
    centos.vm.provision "ansible" do |ansible|
      ansible.playbook = "tests/test_vagrant.yml"
    end
  end
end
