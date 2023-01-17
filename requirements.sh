#!/bin/bash

# Install Vagrant
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install -y vagrant-2.3.4

# Install Virtualbox
wget -P /https://download.virtualbox.org/virtualbox/7.0.4/virtualbox-7.0_7.0.4-154605~Debian~bullseye_amd64.deb
sudo apt install -y /tmp/virtualbox-7.0_7.0.4-154605~Debian~bullseye_amd64.deb

# Install Docker
##

# Install kubectl ?
##

# Install k3d
sudo apt install -y curl
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

