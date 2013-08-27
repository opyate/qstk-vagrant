# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise32"

	# makes your renders available at http://localhost:8888 on the host machine
	config.vm.forward_port 8000, 8888

	# Ensures QSTK can render graphics on the headless instance
  config.ssh.forward_x11 = true

	# This installs QSTK and its dependencies
	config.vm.provision :shell, :path => "qstk-install.sh"

end
