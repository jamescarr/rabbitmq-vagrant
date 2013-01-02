# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
	
	config.vm.customize ["modifyvm", :id,
                        "--name", "rabbit-test",
                        "--memory", "256"]
  config.vm.network :hostonly, '192.168.2.9'

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = './puppet/manifests'
    puppet.manifest_file  = 'site.pp'
    puppet.module_path   = './puppet/modules'
  end

end
