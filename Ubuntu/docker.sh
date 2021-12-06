#!/bin/sh


#     1  sudo apt-get remove docker docker-engine docker.io containerd runc
#     2  ^[[200~sudo apt-get update~
#     3  sudo apt-get update
#     4  sudo apt-get install \\n    apt-transport-https \\n    ca-certificates \\n    curl \\n    gnupg-agent \\n    software-properties-common
#     5  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#     6  sudo apt-key fingerprint 0EBFCD88
#     7  sudo add-apt-repository \\n   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \\n   $(lsb_release -cs) \\n   stable"
#     8  sudo apt-get update
#     9  sudo apt-get install docker-ce docker-ce-cli containerd.io
#    10  sudo docker run hello-world
#    11  docker run hello-world
#    12  sudo usermod -aG docker john
#    13  docker run hello-world



sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world

sudo docker run hello-world
sudo usermod -aG docker john

# log out/in
# docker run hello-world
