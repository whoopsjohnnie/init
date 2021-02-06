
# Install VirtualBox
> sudo apt install ~/Install/Ubuntu/deb/virtualbox-6.1_6.1.18-142142\~Ubuntu\~eoan_amd64.deb

# Install vagrant
> sudo apt install ~/Install/Ubuntu/deb/vagrant_2.2.14_x86_64.deb

# Vagrant vbguest
> vagrant plugin list
> vagrant plugin uninstall vagrant-vbguest
> vagrant plugin install vagrant-vbguest

# Test
> cd ~/Documents/development/Vagrant/vms/debian-10-buster64
> vagrant destroy
> vagrant up
