# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

	# Vagrant Box
	config.vm.box = "centos/7"

	# Synced Folder for Application
	config.vm.synced_folder "app/", "/app"

	# Shell to Bootstrap Puppet
	config.vm.provision "shell", path: "provision/install.sh"

	# Puppet to Provision
	config.vm.provision "puppet" do |puppet|
		puppet.manifests_path = "provision"
		puppet.manifest_file = "provision.pp"
		puppet.module_path = "provision/modules"
	end
end
