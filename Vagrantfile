## -*- mode: ruby -*-
# vi: set ft=ruby :

# where to find the yml config file
require 'yaml'
current_dir     = File.dirname(File.expand_path(__FILE__))
configs         = YAML.load_file("#{current_dir}/config.yml")
vagrant_config  = configs['configs']

# check for required plugins and install if missing
required_plugins = %w( vagrant-hostmanager vagrant-vbguest )
required_plugins.each do |plugin|
  system "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure(2) do |config|

  # manage virtual domain in local etc/hosts file
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.include_offline = true

  # install ubuntu 20.04
  config.vm.box = "ubuntu/focal64" 

  config.vm.provider "virtualbox" do |vb|
    vb.memory = vagrant_config['memory']
    vb.cpus = vagrant_config['cpus']
    vb.customize ["modifyvm", :id, "--audio", "none"]
  end

  # auto update guest additions
  config.vbguest.auto_update = true

  # vagrant-hostmanager is necessary to update /etc/hosts on hosts and guests
  config.vm.network "private_network", ip: vagrant_config['ip']
  config.vm.hostname = vagrant_config['domain']

  # Mount the synced folders with the owner/group set to the SSH user and any parent folders set to root
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "app", "/var/www/html", create: true, owner: "vagrant", group: "vagrant", mount_options: ["dmode=775,fmode=775"]
  config.vm.synced_folder "ansible_vagrant", "/vagrant/ansible_vagrant", create: true, owner: "vagrant", group: "vagrant", mount_options: ["dmode=775,fmode=775"]

  config.vm.provision "shell", inline: "apt update && apt install ansible -y"
  config.vm.provision "ansible_local" do |ansible|
    ansible.install = false

    ansible.playbook = "ansible_vagrant/playbook.yml"

    ansible.galaxy_role_file = "ansible_vagrant/requirements.yml"
    ansible.extra_vars = {
      ansible_python_interpreter:"/usr/bin/python3"
    }
  end

end
